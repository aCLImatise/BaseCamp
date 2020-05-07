version 1.0

task Psascan {
  input {
    String gapGap
    String memMem
    String outputOutput
    Boolean verboseVerbose
  }
  command <<<
    psascan \
      ~{if defined(gapGap) then ("--gap " +  '"' + gapGap + '"') else ""} \
      ~{if defined(memMem) then ("--mem " +  '"' + memMem + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}