from django.contrib.auth.models import User
from django.core.files.storage import FileSystemStorage
from django.shortcuts import render
from django.views.generic import TemplateView

from Appartment_App.models import add_appartment, book_now, owner_reg, service, payment, UserType, feedback


class IndexView(TemplateView):
    template_name = 'userr/userr_index.html'
    def get_context_data(self, **kwargs):
        context = super(IndexView,self).get_context_data(**kwargs)

        view_appartment = add_appartment.objects.filter(status='approved')

        context['view_appartment'] = view_appartment
        return context

    def post(self,request,*args,**kwargs):
        SearchText = request.POST['SearchText']
        print("111111111111111111",SearchText)
        options = request.POST['options']
        print("111111111111111111",options)

        if options =='All':
            view_appartment = add_appartment.objects.filter(status='approved')

            return render(request,'userr/userr_index.html',{'view_appartment':view_appartment})

        elif options =='Location':
            view_appartment = add_appartment.objects.filter(status='approved',location=SearchText)

            return render(request,'userr/userr_index.html',{'view_appartment':view_appartment})

        elif options =='Appartment Type':
            view_appartment = add_appartment.objects.filter(status='approved',appartment_type=SearchText)

            return render(request,'userr/userr_index.html',{'view_appartment':view_appartment})

        elif options =='Appartment Name':
             view_appartment = add_appartment.objects.filter(status='approved',name=SearchText)

             return render(request,'userr/userr_index.html',{'view_appartment':view_appartment})

        else:
            view_appartment = add_appartment.objects.filter(status='approved')

            return render(request,'userr/userr_index.html',{'view_appartment':view_appartment})



class View_Appartment(TemplateView):
    template_name = 'userr/view_appartment.html'
    def get_context_data(self, **kwargs):
        context = super(View_Appartment,self).get_context_data(**kwargs)

        view_appartment = add_appartment.objects.filter(status='approved')

        context['view_appartment'] = view_appartment
        return context

    def post(self,request,*args,**kwargs):
        SearchText = request.POST['SearchText']
        print("111111111111111111",SearchText)
        options = request.POST['options']
        print("111111111111111111",options)

        if options =='All':
            view_appartment = add_appartment.objects.filter(status='approved')

            return render(request,'userr/userr_index.html',{'view_appartment':view_appartment})

        elif options =='Location':
            view_appartment = add_appartment.objects.filter(status='approved',location=SearchText)

            return render(request,'userr/userr_index.html',{'view_appartment':view_appartment})

        elif options =='Appartment Type':
            view_appartment = add_appartment.objects.filter(status='approved',appartment_type=SearchText)

            return render(request,'userr/userr_index.html',{'view_appartment':view_appartment})

        elif options =='Appartment Name':
             view_appartment = add_appartment.objects.filter(status='approved',name=SearchText)

             return render(request,'userr/userr_index.html',{'view_appartment':view_appartment})

        else:
            view_appartment = add_appartment.objects.filter(status='approved')

            return render(request,'userr/userr_index.html',{'view_appartment':view_appartment})

class Single_Apparment_View(TemplateView):
    template_name = 'userr/single_appartment_view.html'
    def dispatch(self,request,*args,**kwargs):
        id1= self.request.GET['id']
        type= self.request.GET['type']
        if type=='Paying Guest':
            view_singe_appartment = add_appartment.objects.filter(id=id1)
            return render(request,'userr/single_pg_appartment_view.html',{'view_singe_appartment':view_singe_appartment})
        else:
            view_singe_appartment = add_appartment.objects.filter(id=id1)
            return render(request,'userr/single_appartment_view.html',{'view_singe_appartment':view_singe_appartment})
    # def get_context_data(self, **kwargs):
    #     context = super(Single_Apparment_View,self).get_context_data(**kwargs)
    #     id1= self.request.GET['id']
    #     type= self.request.GET['type']
    #     if type=='Paying Guest':
    #         view_singe_appartment = add_appartment.objects.filter(id=id1)
    #         context['view_singe_appartment'] = view_singe_appartment
    #         return render(request,'userr/userr_index.html',{'view_appartment':view_appartment})
    #
    #
    #
    #     view_singe_appartment = add_appartment.objects.filter(id=id1)
    #     context['view_singe_appartment'] = view_singe_appartment
    #     return context

class View_Images(TemplateView):
    template_name = 'userr/view_images.html'
    def get_context_data(self, **kwargs):
        id1= self.request.GET['id']
        print(id1)
        context = super(View_Images,self).get_context_data(**kwargs)

        view_image = add_appartment.objects.filter(id=id1)
        context['view_image'] = view_image
        return context

class Book_Now(TemplateView):
    template_name = 'userr/book_now.html'
    def post(self , request,*args,**kwargs):
        user = User.objects.get(id=self.request.user.id)
        pid = request.GET['id']
        name =request.POST['name']
        time= request.POST['time']
        date= request.POST['date']
        days= request.POST['days']
        proof=request.FILES['proof']
        fi=FileSystemStorage()
        files=fi.save(proof.name,proof)
        address = request.POST['address']
        book = book_now()
        owner= add_appartment.objects.get(id=pid)
        book.user= user
        book.appartment= add_appartment.objects.get(id = pid)
        reg=owner_reg.objects.get(user_id=owner.user_id)
        book.name=name
        book.owner_id_id=reg.id
        book.time= time
        book.date= date
        book.days=days
        book.payment='added'
        book.address = address
        book.proof=files
        book.status= 'pending'
        book.save()
        return render(request, 'userr/userr_index.html', {'messages': "successfully added"})

class View_Booking(TemplateView):
    template_name = 'userr/view_booking.html'
    def get_context_data(self, **kwargs):
        context = super(View_Booking,self).get_context_data(**kwargs)
        cr = self.request.user.id
        print(cr,'1111111')
        # view_booking = book_now.objects.all()
        view_booking = book_now.objects.filter(user_id=cr,payment='added',appartment__appartment_type='Flat')|book_now.objects.filter(user_id=cr,payment='added',appartment__appartment_type='House')|book_now.objects.filter(user_id=cr,payment='added',appartment__appartment_type='Hostel')

        context['view_booking'] = view_booking
        return context

class View_pg_Booking(TemplateView):
    template_name = 'userr/view_pg_booking.html'
    def get_context_data(self, **kwargs):
        context = super(View_pg_Booking,self).get_context_data(**kwargs)
        cr = self.request.user.id
        view_booking = book_now.objects.filter(user_id=cr,payment='added',appartment__appartment_type='Paying Guest')
        context['view_booking'] = view_booking
        return context

class Payment(TemplateView):
    template_name = 'userr/payment.html'
    def post(self , request,*args,**kwargs):
        user = User.objects.get(id=self.request.user.id)
        pid = self.request.GET['id']
        print("11111111111",pid)
        amount= request.POST['amount']
        try:
            if book_now.objects.get(id=pid,status2='approved'):
                pay= book_now.objects.get(id=pid)
                pay.user= user
                pay.amount= amount
                pay.payment='paid'
                pay.status='paid'
                pay.save()
                return render(request, 'userr/userr_index.html', {'messages': "successfully added"})
            else:
                 return render(request, 'userr/userr_index.html', {'messages': "pay after owner approvel"})
        except:
              return render(request, 'userr/userr_index.html', {'messages': "pay after owner approvel"})





class Service(TemplateView):
    template_name = 'userr/service_add.html'
    def get_context_data(self, **kwargs):

        context = super(Service,self).get_context_data(**kwargs)
        # ser= User.objects.get(id=self.request.user.id)

        add_sevice = book_now.objects.filter(user_id=self.request.user.id)
        context['add_sevice'] = add_sevice
        return context

class Add_Service(TemplateView):
    template_name = 'userr/service.html'
    def post(self , request,*args,**kwargs):
        user = User.objects.get(id=self.request.user.id)
        pid = request.GET['id']
        services= request.POST['services']
        servi= service()
        servi.user= user
        servi.appartment_id= pid
        servi.services= services
        servi.status= 'added'
        servi.save()
        return render(request, 'userr/userr_index.html', {'messages': "successfully added"})

class View_Service_Status(TemplateView):
    template_name = 'userr/service_status.html'
    def get_context_data(self, **kwargs):


        context = super(View_Service_Status,self).get_context_data(**kwargs)
        cr = self.request.user.id
        print(cr,'1111111')
        # view_booking = book_now.objects.all()
        view_service_status = service.objects.filter(user_id=cr)

        context['view_service_status'] = view_service_status
        return context

class Feedback(TemplateView):
    template_name = 'userr/feedback.html'
    def post(self , request,*args,**kwargs):
        user = User.objects.get(id=self.request.user.id)
        type = UserType.objects.get(user_id=self.request.user.id)
        feedb =request.POST['feedback']
        feed = feedback()
        feed.user=user
        feed.type= type
        feed.feedback=feedb
        feed.status='added'
        feed.save()
        return render(request, 'userr/userr_index.html',{'message': "Added"})

class View_Feedback(TemplateView):
    template_name = 'userr/view_feedback.html'
    def get_context_data(self, **kwargs):
        context = super(View_Feedback,self).get_context_data(**kwargs)

        feedba = feedback.objects.filter(user_id=self.request.user.id)

        context['feedba'] = feedba
        return context


class add_services(TemplateView):
    template_name =  'userr/add_services.html'
    def get_context_data(self, **kwargs):
        context = super(add_services,self).get_context_data(**kwargs)
        R = service.objects.all()
        context['service']=R
        return context

class services(TemplateView):
    template_name =  'userr/services.html'
    def get_context_data(self, **kwargs):
        context = super(services,self).get_context_data(**kwargs)
        R = service.objects.all()
        context['service']=R
        return context
    def post(self,request,*args,**kwargs):
        id=request.GET['id']
        F= book_now.objects.get(id=id)
        f = request.POST.getlist('i')
        F.facility = f
        F.save()
        cr = self.request.user.id
        view_booking = book_now.objects.filter(user_id=cr,payment='added',appartment__appartment_type='Paying Guest')
        return render(request, 'userr/view_pg_booking.html',{'view_booking':view_booking})


class myhistory(TemplateView):
    template_name = 'userr/myhistory.html'
    def get_context_data(self, **kwargs):
        context = super(myhistory,self).get_context_data(**kwargs)
        cr = self.request.user.id
        view_booking = book_now.objects.filter(user_id=cr,status2="approved")
        context['view_booking'] = view_booking
        return context