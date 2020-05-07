version 1.0

task AnviScriptEstimateGenomeSize {
  input {
    String cC
    Boolean verboseVerbose
  }
  command <<<
    anvi-script-estimate-genome-size \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}