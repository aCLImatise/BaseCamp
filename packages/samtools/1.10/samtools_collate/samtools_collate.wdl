version 1.0

task SamtoolsCollate {
  input {
    Boolean? output_to_stdout
    File? output_file_name
    Boolean? uncompressed_bam_output
    Boolean? fast_only_primary
    Boolean? working_reads_stored
    Int? compression_level
    Int? number_temporary_files
    Boolean? no_pg
    File? input_fmt_option
    String? output_fmt
    File? output_fmt_option
    File? reference
    Int? threads
    Int? verbosity
    Boolean? ou
    String in_dot_bam
    String? prefix
  }
  command <<<
    samtools collate \
      ~{in_dot_bam} \
      ~{prefix} \
      ~{if (output_to_stdout) then "-O" else ""} \
      ~{if (output_file_name) then "-o" else ""} \
      ~{if (uncompressed_bam_output) then "-u" else ""} \
      ~{if (fast_only_primary) then "-f" else ""} \
      ~{if (working_reads_stored) then "-r" else ""} \
      ~{if defined(compression_level) then ("-l " +  '"' + compression_level + '"') else ""} \
      ~{if defined(number_temporary_files) then ("-n " +  '"' + number_temporary_files + '"') else ""} \
      ~{if (no_pg) then "--no-PG" else ""} \
      ~{if defined(input_fmt_option) then ("--input-fmt-option " +  '"' + input_fmt_option + '"') else ""} \
      ~{if defined(output_fmt) then ("--output-fmt " +  '"' + output_fmt + '"') else ""} \
      ~{if defined(output_fmt_option) then ("--output-fmt-option " +  '"' + output_fmt_option + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if (ou) then "-Ou" else ""}
  >>>
  parameter_meta {
    output_to_stdout: "output to stdout"
    output_file_name: "output file name (use prefix if not set)"
    uncompressed_bam_output: "uncompressed BAM output"
    fast_only_primary: "fast (only primary alignments)"
    working_reads_stored: "working reads stored (with -f) [10000]"
    compression_level: "compression level [1]"
    number_temporary_files: "number of temporary files [64]"
    no_pg: "do not add a PG line"
    input_fmt_option: "[=VAL]\\nSpecify a single input file format option in the form\\nof OPTION or OPTION=VALUE"
    output_fmt: "[,OPT[=VAL]]...\\nSpecify output format (SAM, BAM, CRAM)"
    output_fmt_option: "[=VAL]\\nSpecify a single output file format option in the form\\nof OPTION or OPTION=VALUE"
    reference: "Reference sequence FASTA FILE [null]"
    threads: "Number of additional threads to use [0]"
    verbosity: "Set level of verbosity"
    ou: ""
    in_dot_bam: ""
    prefix: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
    File out_output_fmt_option = "${in_output_fmt_option}"
  }
}