version 1.0

task Kcutiltest {
  input {
    String thTh
    String ivIv
    String? mutexMutex
    String? rnumRnum
  }
  command <<<
    kcutiltest \
      ~{mutexMutex} \
      ~{if defined(thTh) then ("-th " +  '"' + thTh + '"') else ""} \
      ~{if defined(ivIv) then ("-iv " +  '"' + ivIv + '"') else ""} \
      ~{rnumRnum}
  >>>
}