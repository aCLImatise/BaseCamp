version 1.0

task Rbcavity {
  input {
    Boolean rR
    Boolean wasWas
    Boolean rasRas
    Boolean dD
    Boolean vV
    Boolean lL
    Boolean sS
    Boolean bB
    Boolean mM
  }
  command <<<
    rbcavity \
      ~{true="-r" false="" rR} \
      ~{true="-was" false="" wasWas} \
      ~{true="-ras" false="" rasRas} \
      ~{true="-d" false="" dD} \
      ~{true="-v" false="" vV} \
      ~{true="-l" false="" lL} \
      ~{true="-s" false="" sS} \
      ~{true="-b" false="" bB} \
      ~{true="-m" false="" mM}
  >>>
}