from distutils.core import setup
from distutils.extension import Extension
from Cython.Build import cythonize
import os


# Note: build will not work if pyx name does not match the
# last part of the extension name!
extension_src = ["native/native.pyx", "native/example.c"]


extensions = [
    Extension("wrap.native", extension_src)
]

setup(
    name="wrap",
    version="1.0",
    ext_modules=cythonize(extensions),
    packages=['wrap']
)
