#Abstraction
from abc import abstractmethod,ABC

# class Phone(ABC):
#     @abstractmethod      
#     def on(self):
#           print ("Nokia is on")
        
#     @abstractmethod  
#     def off(self):
#         print ("Nokia is off")
   
# class Nokia(Phone):
#     def on(self):
#         pass
#     def off(self):
#         pass
    
# class Samsung:
#     pass

# n=Nokia()
# print(n)

# class Electronic(ABC):
#     @abstractmethod
#     def check(self):
#         return f"{self}

#     @abstractmethod
#     def indikator(self):
#         return f"(self) 

# class Laptop(Electronic):
#     def check(self):
#         pass
#     def indikator(self):
#         return f"{self}ma'lumotlari"

# class TV(Electronic):
#     def check(self):
#         print("TV ishladi")
#     def indikator(self):
#         pass

# n=Laptop()
# s=TV()
# print(n)   

# class Foo:
#     def __getitem__(self, index):
#         ...
#     def __len__(self):
#         ...
#     def get_iterator(self):
#         return iter(self)

# class MyIterable(ABC):

#     @abstractmethod
#     def __iter__(self):
#         while False:
#             yield None

#     def get_iterator(self):
#         return self.__iter__()

#     @classmethod
#     def __subclasshook__(cls, C):
#         if cls is MyIterable:
#             if any("__iter__" in B.__dict__ for B in C.__mro__):
#                 return True
#         return NotImplemented

# MyIterable.register(Foo)