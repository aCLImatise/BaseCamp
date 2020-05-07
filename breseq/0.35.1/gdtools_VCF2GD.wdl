version 1.0

task GdtoolsVCF2GD {
  input {
    String outputOutput
  }
  command <<<
    gdtools VCF2GD \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}