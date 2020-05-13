version 1.0

task Psa2msa {
  input {
    Boolean dD
    Boolean lL
    Boolean pP
    Boolean uU
    Boolean mM
    Boolean wW
  }
  command <<<
    psa2msa \
      ~{true="-d" false="" dD} \
      ~{true="-l" false="" lL} \
      ~{true="-p" false="" pP} \
      ~{true="-u" false="" uU} \
      ~{true="-M" false="" mM} \
      ~{true="-W" false="" wW}
  >>>
}