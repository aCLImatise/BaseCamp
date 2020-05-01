version 1.0

task Fdnapenny {
  input {
    Boolean outOutGrNo
    Boolean doDoThreshold
  }
  command <<<
    fdnapenny \
      ~{true="-outgrno" false="" outOutGrNo} \
      ~{true="-dothreshold" false="" doDoThreshold}
  >>>
}