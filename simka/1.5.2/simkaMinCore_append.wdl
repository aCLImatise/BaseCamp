version 1.0

task SimkaMinCoreAppend {
  input {
    Boolean in1In1
    Boolean in2In2
  }
  command <<<
    simkaMinCore append \
      ~{true="-in1" false="" in1In1} \
      ~{true="-in2" false="" in2In2}
  >>>
}