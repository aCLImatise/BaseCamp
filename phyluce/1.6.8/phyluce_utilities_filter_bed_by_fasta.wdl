version 1.0

task PhyluceUtilitiesFilterBedByFasta {
  input {
    String? bed
    String? fast_a
    String? output_bed_file
  }
  command <<<
    phyluce_utilities_filter_bed_by_fasta \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(output_bed_file) then ("--output " +  '"' + output_bed_file + '"') else ""}
  >>>
  parameter_meta {
    bed: "The BED file to filter."
    fast_a: "The FASTA file to use as a filter."
    output_bed_file: "The output BED file"
  }
}