version 1.0

task SamtoolsDepad {
  input {
    Boolean? output_sam_default
    Boolean? input_sam_default
    Boolean? uncompressed_bam_output
    Boolean? fast_compression_bam
    File? reference
    File? output_file_name
    Boolean? no_pg
    File? input_fmt_option
    String? output_fmt
    File? output_fmt_option
    Boolean? write_index
    Int? verbosity
    String in_dot_bam
  }
  command <<<
    samtools depad \
      ~{in_dot_bam} \
      ~{if (output_sam_default) then "-s" else ""} \
      ~{if (input_sam_default) then "-S" else ""} \
      ~{if (uncompressed_bam_output) then "-u" else ""} \
      ~{if (fast_compression_bam) then "-1" else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(output_file_name) then ("-o " +  '"' + output_file_name + '"') else ""} \
      ~{if (no_pg) then "--no-PG" else ""} \
      ~{if defined(input_fmt_option) then ("--input-fmt-option " +  '"' + input_fmt_option + '"') else ""} \
      ~{if defined(output_fmt) then ("--output-fmt " +  '"' + output_fmt + '"') else ""} \
      ~{if defined(output_fmt_option) then ("--output-fmt-option " +  '"' + output_fmt_option + '"') else ""} \
      ~{if (write_index) then "--write-index" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/samtools:1.11--h6270b1f_0"
  }
  parameter_meta {
    output_sam_default: "Output is SAM (default is BAM)"
    input_sam_default: "Input is SAM (default is BAM)"
    uncompressed_bam_output: "Uncompressed BAM output (can't use with -s)"
    fast_compression_bam: "Fast compression BAM output (can't use with -s)"
    reference: "Padded reference sequence file [null]"
    output_file_name: "Output file name [stdout]"
    no_pg: "do not add a PG line"
    input_fmt_option: "[=VAL]\\nSpecify a single input file format option in the form\\nof OPTION or OPTION=VALUE"
    output_fmt: "[,OPT[=VAL]]...\\nSpecify output format (SAM, BAM, CRAM)"
    output_fmt_option: "[=VAL]\\nSpecify a single output file format option in the form\\nof OPTION or OPTION=VALUE"
    write_index: "Automatically index the output files [off]"
    verbosity: "Set level of verbosity"
    in_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
    File out_output_fmt_option = "${in_output_fmt_option}"
  }
}