version 1.0

task Lfmm2geno {
  input {
    File inputInput
    File outputOutput
  }
  command <<<
    lfmm2geno \
      ~{if defined(inputInput) then ("-input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("-output " +  '"' + outputOutput + '"') else ""}
  >>>
}