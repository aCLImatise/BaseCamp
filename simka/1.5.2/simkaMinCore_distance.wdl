version 1.0

task SimkaMinCoreDistance {
  input {
    Boolean in1In1
    Boolean in2In2
    Boolean outOut
    Boolean nbNbCores
    Boolean verboseVerbose
    Boolean startStartI
    Boolean startStartJ
    Boolean nNI
    Boolean nNJ
  }
  command <<<
    simkaMinCore distance \
      ~{true="-in1" false="" in1In1} \
      ~{true="-in2" false="" in2In2} \
      ~{true="-out" false="" outOut} \
      ~{true="-nb-cores" false="" nbNbCores} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-start-i" false="" startStartI} \
      ~{true="-start-j" false="" startStartJ} \
      ~{true="-n-i" false="" nNI} \
      ~{true="-n-j" false="" nNJ}
  >>>
}