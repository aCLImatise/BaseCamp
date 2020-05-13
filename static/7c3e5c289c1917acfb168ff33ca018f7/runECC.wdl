version 1.0

task RunECC.sh {
  input {
    Boolean insIns
    Boolean in1In1
    Boolean in2In2
    Boolean inpInp
    Boolean dD
    Boolean oO
    Boolean mM
    Boolean nN
  }
  command <<<
    runECC.sh \
      ~{true="-inS" false="" insIns} \
      ~{true="-in1" false="" in1In1} \
      ~{true="-in2" false="" in2In2} \
      ~{true="-inP" false="" inpInp} \
      ~{true="-d" false="" dD} \
      ~{true="-o" false="" oO} \
      ~{true="-m" false="" mM} \
      ~{true="-n" false="" nN}
  >>>
}