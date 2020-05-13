version 1.0

task ValidateGtf.pl {
  input {
    Boolean sS
    Boolean cC
    Boolean pP
    Boolean kK
    Boolean lL
    Boolean mM
  }
  command <<<
    validate_gtf.pl \
      ~{true="-s" false="" sS} \
      ~{true="-c" false="" cC} \
      ~{true="-p" false="" pP} \
      ~{true="-k" false="" kK} \
      ~{true="-l" false="" lL} \
      ~{true="-m" false="" mM}
  >>>
}