version 1.0

task Contree {
  input {
    String fF
    String outputOutput
    Boolean calculateCalculateSupport
  }
  command <<<
    contree \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--calculate_support" false="" calculateCalculateSupport}
  >>>
}