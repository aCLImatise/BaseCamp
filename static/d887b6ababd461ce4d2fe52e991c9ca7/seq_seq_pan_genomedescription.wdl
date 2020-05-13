version 1.0

task SeqSeqPanGenomedescription {
  input {
    String inputInput
    String outputOutput
    String addAdd
    String? genomeGenomeDescriptionPy
  }
  command <<<
    seq-seq-pan-genomedescription \
      ~{genomeGenomeDescriptionPy} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(addAdd) then ("--add " +  '"' + addAdd + '"') else ""}
  >>>
}