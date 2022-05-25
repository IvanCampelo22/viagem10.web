from django.shortcuts import render

# Create your views here.

def home(request):
    return render(request, "home.html")

def version(request):
    return render(request, "version.html")