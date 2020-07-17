version 1.0

task MbCreateBamStatistics {
  input {
    String? gff_file
    String estimate_bam_statistics
    String bam_file
    String output_json
  }
  command <<<
    mb-create-bam-statistics \
      ~{estimate_bam_statistics} \
      ~{bam_file} \
      ~{output_json} \
      ~{if defined(gff_file) then ("--gff_file " +  '"' + gff_file + '"') else ""}
  >>>
  parameter_meta {
    gff_file: ""
    estimate_bam_statistics: ""
    bam_file: ""
    output_json: ""
  }
}