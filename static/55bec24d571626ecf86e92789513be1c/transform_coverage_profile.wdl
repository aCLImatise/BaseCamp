version 1.0

task TransformCoverageProfile {
  input {
    String cC
    String tT
  }
  command <<<
    transform-coverage-profile \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""}
  >>>
}