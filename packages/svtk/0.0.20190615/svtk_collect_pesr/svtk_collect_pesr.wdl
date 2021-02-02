version 1.0

task SvtkCollectpesr {
  input {
    Directory? index_dir
    String? region
    Boolean? b_gzip
    String bam
    String sample
    String split_file
    String disc_file
  }
  command <<<
    svtk collect_pesr \
      ~{bam} \
      ~{sample} \
      ~{split_file} \
      ~{disc_file} \
      ~{if defined(index_dir) then ("--index-dir " +  '"' + index_dir + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if (b_gzip) then "--bgzip" else ""}
  >>>
  parameter_meta {
    index_dir: "Directory of local BAM indexes if accessing a remote\\nS3 bam."
    region: "Tabix-formatted region to parse"
    b_gzip: "bgzip and tabix index output"
    bam: "Local or S3 path to bam"
    sample: "ID to append to each line of output files."
    split_file: "Output split counts."
    disc_file: "Output discordant pairs."
  }
  output {
    File out_stdout = stdout()
  }
}