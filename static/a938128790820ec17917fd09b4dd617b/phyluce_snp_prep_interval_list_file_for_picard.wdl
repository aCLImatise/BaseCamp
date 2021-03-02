version 1.0

task PhyluceSnpPrepIntervalListFileForPicard {
  input {
    File? bed
    File? bam
    File? output_bed_file
  }
  command <<<
    phyluce_snp_prep_interval_list_file_for_picard \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(output_bed_file) then ("--output " +  '"' + output_bed_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bed: "The BED file to filter."
    bam: "The BED file to filter."
    output_bed_file: "The output BED file"
  }
  output {
    File out_stdout = stdout()
    File out_output_bed_file = "${in_output_bed_file}"
  }
}