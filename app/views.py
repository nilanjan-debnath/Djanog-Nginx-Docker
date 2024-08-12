from django.shortcuts import render
import socket
import os
# Create your views here.

def home(request):
    context = {'pid':  os.getpid(), 'socket':  socket.gethostname()}
    return render(request, 'base.html', context)