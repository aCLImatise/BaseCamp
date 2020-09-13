version 1.0

task FlyesamtoolsSplit {
  input {
    File? output_filename_format
    Boolean? verbose_output
    File? input_fmt_option
    String? output_fmt
    File? output_fmt_option
    File? reference
    Int? threads
    String sam_tools
    String split
  }
  command <<<
    flye_samtools split \
      ~{sam_tools} \
      ~{split} \
      ~{if defined(output_filename_format) then ("-f " +  '"' + output_filename_format + '"') else ""} \
      ~{if (verbose_output) then "-v" else ""} \
      ~{if defined(input_fmt_option) then ("--input-fmt-option " +  '"' + input_fmt_option + '"') else ""} \
      ~{if defined(output_fmt) then ("--output-fmt " +  '"' + output_fmt + '"') else ""} \
      ~{if defined(output_fmt_option) then ("--output-fmt-option " +  '"' + output_fmt_option + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    output_filename_format: "output filename format string [\\\"%*_%#.%.\\\"]"
    verbose_output: "verbose output"
    input_fmt_option: "[=VAL]\\nSpecify a single input file format option in the form\\nof OPTION or OPTION=VALUE"
    output_fmt: "[,OPT[=VAL]]...\\nSpecify output format (SAM, BAM, CRAM)"
    output_fmt_option: "[=VAL]\\nSpecify a single output file format option in the form\\nof OPTION or OPTION=VALUE"
    reference: "Reference sequence FASTA FILE [null]"
    threads: "Number of additional threads to use [0]"
    sam_tools: ""
    split: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_filename_format = "${in_output_filename_format}"
    File out_output_fmt_option = "${in_output_fmt_option}"
  }
}