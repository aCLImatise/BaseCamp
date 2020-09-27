version 1.0

task HtsboxBamshuf {
  input {
    Boolean? output_to_stdout
    Boolean? uncompressed_bam_output
    Int? compression_level
    Int? number_temporary_files
    String? c
    Boolean? ou
    String bams_huf
    String in_dot_bam
    String out_dot_prefix
  }
  command <<<
    htsbox bamshuf \
      ~{bams_huf} \
      ~{in_dot_bam} \
      ~{out_dot_prefix} \
      ~{if (output_to_stdout) then "-O" else ""} \
      ~{if (uncompressed_bam_output) then "-u" else ""} \
      ~{if defined(compression_level) then ("-l " +  '"' + compression_level + '"') else ""} \
      ~{if defined(number_temporary_files) then ("-n " +  '"' + number_temporary_files + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if (ou) then "-Ou" else ""}
  >>>
  parameter_meta {
    output_to_stdout: "output to stdout"
    uncompressed_bam_output: "uncompressed BAM output"
    compression_level: "compression level [3]"
    number_temporary_files: "number of temporary files [64]"
    c: ""
    ou: ""
    bams_huf: ""
    in_dot_bam: ""
    out_dot_prefix: ""
  }
  output {
    File out_stdout = stdout()
  }
}