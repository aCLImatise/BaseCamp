version 1.0

task BayesTyperToolsAnnotate {
  input {
    Boolean vV
    Boolean aA
    Boolean oO
    Boolean zZ
    Boolean cC
    String matchMatchThreshold
    String windowWindowSizeScale
  }
  command <<<
    bayesTyperTools annotate \
      ~{true="-v" false="" vV} \
      ~{true="-a" false="" aA} \
      ~{true="-o" false="" oO} \
      ~{true="-z" false="" zZ} \
      ~{true="-c" false="" cC} \
      ~{if defined(matchMatchThreshold) then ("--match-threshold " +  '"' + matchMatchThreshold + '"') else ""} \
      ~{if defined(windowWindowSizeScale) then ("--window-size-scale " +  '"' + windowWindowSizeScale + '"') else ""}
  >>>
}