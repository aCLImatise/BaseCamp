version 1.0

task SimkaMinCoreExport {
  input {
    Boolean inIn
    Boolean in1In1
    Boolean in2In2
    Boolean outOut
    Boolean nbNbCores
    Boolean verboseVerbose
  }
  command <<<
    simkaMinCore export \
      ~{true="-in" false="" inIn} \
      ~{true="-in1" false="" in1In1} \
      ~{true="-in2" false="" in2In2} \
      ~{true="-out" false="" outOut} \
      ~{true="-nb-cores" false="" nbNbCores} \
      ~{true="-verbose" false="" verboseVerbose}
  >>>
}