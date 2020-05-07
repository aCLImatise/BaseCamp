version 1.0

task RemoveBadIllumina.py {
  input {
    String inputInput
    String outputOutput
    String linkLink
  }
  command <<<
    remove-bad-illumina.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(linkLink) then ("--link " +  '"' + linkLink + '"') else ""}
  >>>
}