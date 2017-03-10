#! /usr/bin/env python3

from psutil import virtual_memory

percentage  = 100 - int(virtual_memory()[2])
if percentage > 95:
    print("\uf111 \uf111 \uf111 \uf111 \uf111 \uf111 \uf111 \uf111 \uf111 \uf111")
elif percentage > 85:
    print("\uf111 \uf111 \uf111 \uf111 \uf111 \uf111 \uf111 \uf111 \uf111 \uf10c")
elif percentage > 75:
    print("\uf111 \uf111 \uf111 \uf111 \uf111 \uf111 \uf111 \uf111 \uf10c \uf10c")
elif percentage > 65:
    print("\uf111 \uf111 \uf111 \uf111 \uf111 \uf111 \uf111 \uf10c \uf10c \uf10c")
elif percentage > 55:
    print("\uf111 \uf111 \uf111 \uf111 \uf111 \uf111 \uf10c \uf10c \uf10c \uf10c")
elif percentage > 45:
    print("\uf111 \uf111 \uf111 \uf111 \uf111 \uf10c \uf10c \uf10c \uf10c \uf10c")
elif percentage > 35:
    print("\uf111 \uf111 \uf111 \uf111 \uf10c \uf10c \uf10c \uf10c \uf10c \uf10c")
elif percentage > 25:
    print("\uf111 \uf111 \uf111 \uf10c \uf10c \uf10c \uf10c \uf10c \uf10c \uf10c")
elif percentage > 15:
    print("\uf111 \uf111 \uf10c \uf10c \uf10c \uf10c \uf10c \uf10c \uf10c \uf10c")
elif percentage > 5:
    print("\uf111 \uf10c \uf10c \uf10c \uf10c \uf10c \uf10c \uf10c \uf10c \uf10c")
else:
    print("\uf10c \uf10c \uf10c \uf10c \uf10c \uf10c \uf10c \uf10c \uf10c \uf10c")

