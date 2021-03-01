version 1.0

task Bamfilterrgpy {
  input {
    File? input_bam_file
    String? read_group
    Int? output_first_alignments
    Boolean? input_sam_format
    Boolean? output_bam_format
    Boolean? output_uncompressed_bam
  }
  command <<<
    bamfilterrg_py \
      ~{if defined(input_bam_file) then ("--input " +  '"' + input_bam_file + '"') else ""} \
      ~{if defined(read_group) then ("--readgroup " +  '"' + read_group + '"') else ""} \
      ~{if defined(output_first_alignments) then ("-n " +  '"' + output_first_alignments + '"') else ""} \
      ~{if (input_sam_format) then "-S" else ""} \
      ~{if (output_bam_format) then "-b" else ""} \
      ~{if (output_uncompressed_bam) then "-u" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bamkit:16.07.26--py_0"
  }
  parameter_meta {
    input_bam_file: "Input BAM file"
    read_group: "Read group(s) to extract (comma separated)"
    output_first_alignments: "Output first n alignments and quit"
    input_sam_format: "Input is SAM format"
    output_bam_format: "Output BAM format"
    output_uncompressed_bam: "Output uncompressed BAM format (implies -b)"
  }
  output {
    File out_stdout = stdout()
  }
}