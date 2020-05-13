version 1.0

task PhyluceAssemblyExplodeGetFastasFile {
  input {
    String inputInput
    String outputOutput
    Boolean byByTaxOn
    String splitSplitChar
  }
  command <<<
    phyluce_assembly_explode_get_fastas_file \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--by-taxon" false="" byByTaxOn} \
      ~{if defined(splitSplitChar) then ("--split-char " +  '"' + splitSplitChar + '"') else ""}
  >>>
}