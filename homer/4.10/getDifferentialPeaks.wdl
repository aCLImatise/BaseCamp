version 1.0

task GetDifferentialPeaks {
  input {
    Boolean fF
    Boolean pP
    Boolean sameSame
    Boolean revRev
    Boolean sizeSize
    Boolean fixedFixed
    Boolean tbpTbp
    Boolean tbpTbpBg
  }
  command <<<
    getDifferentialPeaks \
      ~{true="-F" false="" fF} \
      ~{true="-P" false="" pP} \
      ~{true="-same" false="" sameSame} \
      ~{true="-rev" false="" revRev} \
      ~{true="-size" false="" sizeSize} \
      ~{true="-fixed" false="" fixedFixed} \
      ~{true="-tbp" false="" tbpTbp} \
      ~{true="-tbpBg" false="" tbpTbpBg}
  >>>
}