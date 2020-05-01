version 1.0

task Solexa18to15.py {
  input {
    String inputInput
    String outputOutput
    Boolean skipSkipFilter
    Boolean failFail
    String linkLink
  }
  command <<<
    solexa18to15.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--skip_filter" false="" skipSkipFilter} \
      ~{true="--fail" false="" failFail} \
      ~{if defined(linkLink) then ("--link " +  '"' + linkLink + '"') else ""}
  >>>
}