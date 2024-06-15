import ctypes

def call_who_am_i(lib):
    lib.who_am_i.restype = ctypes.c_char_p  
    result = lib.who_am_i()  
    return ctypes.c_char_p(result).value 

def main():
    print("test begin")

    print("load v1 to mylib")
    mylib = ctypes.CDLL('./libv1/target/release/libmylib.so')
    print("check lib version:", call_who_am_i(mylib))
    print("")

    print("reload v2 to mylib")
    mylib = ctypes.CDLL('./libv2/target/release/libmylib.so')
    print("check lib version:", call_who_am_i(mylib))

    print("test end")

if __name__ == "__main__":
    main()