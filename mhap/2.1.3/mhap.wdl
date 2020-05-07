version 1.0

task Mhap {
  input {
    Boolean fF
    Boolean kK
    Boolean pP
    Boolean qQ
    Boolean sS
  }
  command <<<
    mhap \
      ~{true="-f" false="" fF} \
      ~{true="-k" false="" kK} \
      ~{true="-p" false="" pP} \
      ~{true="-q" false="" qQ} \
      ~{true="-s" false="" sS}
  >>>
}