version 1.0

task PhyluceUtilitiesGetBedFromFasta {
  input {
    String inputInput
    String outputOutput
    String locusLocusPrefix
  }
  command <<<
    phyluce_utilities_get_bed_from_fasta \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(locusLocusPrefix) then ("--locus-prefix " +  '"' + locusLocusPrefix + '"') else ""}
  >>>
}