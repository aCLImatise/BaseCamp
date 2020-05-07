version 1.0

task Ancestrymap2geno {
  input {
    File inputInput
    File outputOutput
  }
  command <<<
    ancestrymap2geno \
      ~{if defined(inputInput) then ("-input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("-output " +  '"' + outputOutput + '"') else ""}
  >>>
}