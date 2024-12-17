from django.http import HttpResponse
from django.shortcuts import render
def home(request):
    #return HttpResponse("Hello its me Jyoti using Django Home page")
    return render(request,'website/index.html')
def next_page(request):
    return HttpResponse("Hello its my next page of webpage")
