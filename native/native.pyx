from .pythonex import example

# Function Prototype for the C function in example.c
ctypedef int (*callback_function_pointer)(int i)

cdef extern from "example.h":
     void call_a_python_func(int (*func)(int), int i)

cdef int wrapping_example(int i):
     print("I'm Cython code, now calling a Python function...")
     return example(i)
     

print("Now calling call_a_python_func with wrapping_example, which calls the function example")


call_a_python_func(wrapping_example, 2)