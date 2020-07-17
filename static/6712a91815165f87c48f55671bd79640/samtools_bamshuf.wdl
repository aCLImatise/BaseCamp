version 1.0

task SamtoolsBamshuf {
  input {
    Boolean? output_to_stdout
    Boolean? uncompressed_bam_output
    Int? compression_level
    Int? number_temporary_files
    Boolean? ou
    String? c
    String bams_huf
    String in_dot_bam
    String out_dot_prefix
  }
  command <<<
    samtools bamshuf \
      ~{bams_huf} \
      ~{in_dot_bam} \
      ~{out_dot_prefix} \
      ~{true="-O" false="" output_to_stdout} \
      ~{true="-u" false="" uncompressed_bam_output} \
      ~{if defined(compression_level) then ("-l " +  '"' + compression_level + '"') else ""} \
      ~{if defined(number_temporary_files) then ("-n " +  '"' + number_temporary_files + '"') else ""} \
      ~{true="-Ou" false="" ou} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""}
  >>>
  parameter_meta {
    output_to_stdout: "output to stdout"
    uncompressed_bam_output: "uncompressed BAM output"
    compression_level: "compression level [1]"
    number_temporary_files: "number of temporary files [64]"
    ou: ""
    c: ""
    bams_huf: ""
    in_dot_bam: ""
    out_dot_prefix: ""
  }
}