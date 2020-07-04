version 1.0

task PhyluceSnpPrepIntervalListFileForPicard {
  input {
    String? bed
    String? bam
    String? output_bed_file
  }
  command <<<
    phyluce_snp_prep_interval_list_file_for_picard \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(output_bed_file) then ("--output " +  '"' + output_bed_file + '"') else ""}
  >>>
  parameter_meta {
    bed: "The BED file to filter."
    bam: "The BED file to filter."
    output_bed_file: "The output BED file"
  }
}