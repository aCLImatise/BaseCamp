version 1.0

task Vcf2geno {
  input {
    File inputInput
    File outputOutput
  }
  command <<<
    vcf2geno \
      ~{if defined(inputInput) then ("-input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("-output " +  '"' + outputOutput + '"') else ""}
  >>>
}