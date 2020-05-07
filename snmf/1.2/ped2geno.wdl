version 1.0

task Ped2geno {
  input {
    File inputInput
    File outputOutput
  }
  command <<<
    ped2geno \
      ~{if defined(inputInput) then ("-input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("-output " +  '"' + outputOutput + '"') else ""}
  >>>
}