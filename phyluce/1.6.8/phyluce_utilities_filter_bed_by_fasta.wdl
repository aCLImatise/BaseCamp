version 1.0

task PhyluceUtilitiesFilterBedByFasta {
  input {
    String bedBed
    String fastFastA
    String outputOutput
  }
  command <<<
    phyluce_utilities_filter_bed_by_fasta \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}