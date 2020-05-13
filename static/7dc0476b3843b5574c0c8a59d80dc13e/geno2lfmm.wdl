version 1.0

task Geno2lfmm {
  input {
    File inputInput
    File outputOutput
  }
  command <<<
    geno2lfmm \
      ~{if defined(inputInput) then ("-input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("-output " +  '"' + outputOutput + '"') else ""}
  >>>
}