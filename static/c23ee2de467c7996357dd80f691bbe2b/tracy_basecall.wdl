version 1.0

task TracyBasecall {
  input {
    Boolean pP
    Boolean fF
    Boolean oO
    String? optionsOptions
    String? traceTraceAb1
  }
  command <<<
    tracy basecall \
      ~{optionsOptions} \
      ~{true="-p" false="" pP} \
      ~{true="-f" false="" fF} \
      ~{true="-o" false="" oO} \
      ~{traceTraceAb1}
  >>>
}