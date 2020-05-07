version 1.0

task _fdnapenny {
  input {
    Boolean outOutGrNo
    Boolean doDoThreshold
  }
  command <<<
    _fdnapenny \
      ~{true="-outgrno" false="" outOutGrNo} \
      ~{true="-dothreshold" false="" doDoThreshold}
  >>>
}