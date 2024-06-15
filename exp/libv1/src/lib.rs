use std::ffi::CString;
use std::os::raw::c_char;

#[no_mangle]
pub extern "C" fn who_am_i() -> *mut c_char {
    let msg = CString::new("I am v1").unwrap();
    msg.into_raw()
}