version 1.0

task PhyluceAlignOutputListOfTaxonCounts {
  input {
    String fastFastAs
    String inputInputFormat
    Int minMinCount
    String coresCores
  }
  command <<<
    phyluce_align_output_list_of_taxon_counts \
      ~{if defined(fastFastAs) then ("--fastas " +  '"' + fastFastAs + '"') else ""} \
      ~{if defined(inputInputFormat) then ("--input-format " +  '"' + inputInputFormat + '"') else ""} \
      ~{if defined(minMinCount) then ("--min-count " +  '"' + minMinCount + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""}
  >>>
}