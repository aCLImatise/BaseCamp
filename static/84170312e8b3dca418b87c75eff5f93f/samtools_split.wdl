version 1.0

task SamtoolsSplit {
  input {
    File? output_filename_format
    File? put_reads_rg
    Array[String] override_header_only
    Boolean? verbose_output
    Boolean? no_pg
    File? input_fmt_option
    String? output_fmt
    File? output_fmt_option
    File? reference
    Int? threads
    Boolean? write_index
    Int? verbosity
  }
  command <<<
    samtools split \
      ~{if defined(output_filename_format) then ("-f " +  '"' + output_filename_format + '"') else ""} \
      ~{if defined(put_reads_rg) then ("-u " +  '"' + put_reads_rg + '"') else ""} \
      ~{if defined(override_header_only) then ("-h " +  '"' + override_header_only + '"') else ""} \
      ~{if (verbose_output) then "-v" else ""} \
      ~{if (no_pg) then "--no-PG" else ""} \
      ~{if defined(input_fmt_option) then ("--input-fmt-option " +  '"' + input_fmt_option + '"') else ""} \
      ~{if defined(output_fmt) then ("--output-fmt " +  '"' + output_fmt + '"') else ""} \
      ~{if defined(output_fmt_option) then ("--output-fmt-option " +  '"' + output_fmt_option + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (write_index) then "--write-index" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_filename_format: "output filename format string [\\\"%*_%#.%.\\\"]"
    put_reads_rg: "put reads with no RG tag or an unrecognised RG tag in FILE1"
    override_header_only: "override the header with FILE2 (-u file only)"
    verbose_output: "verbose output"
    no_pg: "do not add a PG line"
    input_fmt_option: "[=VAL]\\nSpecify a single input file format option in the form\\nof OPTION or OPTION=VALUE"
    output_fmt: "[,OPT[=VAL]]...\\nSpecify output format (SAM, BAM, CRAM)"
    output_fmt_option: "[=VAL]\\nSpecify a single output file format option in the form\\nof OPTION or OPTION=VALUE"
    reference: "Reference sequence FASTA FILE [null]"
    threads: "Number of additional threads to use [0]"
    write_index: "Automatically index the output files [off]"
    verbosity: "Set level of verbosity"
  }
  output {
    File out_stdout = stdout()
    File out_output_filename_format = "${in_output_filename_format}"
    File out_output_fmt_option = "${in_output_fmt_option}"
  }
}