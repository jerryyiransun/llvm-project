; RUN llc < %s -mtriple=s390x-ibm-zos -mcpu=z10 --stop-after=systemz-isel | FileCheck %s

define i32 @get_checksum(i32 %cksmin, ptr %mem, i64 %len) {
    %res = call i32 @llvm.s390.cksm(i32 %cksmin, ptr %mem, i64 %len)
    ret i32 %res
}