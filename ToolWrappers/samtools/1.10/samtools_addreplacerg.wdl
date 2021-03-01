version 1.0

task SamtoolsAddreplacerg {
  input {
    String? set_mode_orphanonly
    File? where_write_output
    String? rg_line_text
    String? id_rg_use
    Boolean? no_pg
    String? input_fmt
    File? input_fmt_option
    String? output_fmt
    File? output_fmt_option
    File? reference
    Int? threads
    Boolean? write_index
    Int? verbosity
  }
  command <<<
    samtools addreplacerg \
      ~{if defined(set_mode_orphanonly) then ("-m " +  '"' + set_mode_orphanonly + '"') else ""} \
      ~{if defined(where_write_output) then ("-o " +  '"' + where_write_output + '"') else ""} \
      ~{if defined(rg_line_text) then ("-r " +  '"' + rg_line_text + '"') else ""} \
      ~{if defined(id_rg_use) then ("-R " +  '"' + id_rg_use + '"') else ""} \
      ~{if (no_pg) then "--no-PG" else ""} \
      ~{if defined(input_fmt) then ("--input-fmt " +  '"' + input_fmt + '"') else ""} \
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
    set_mode_orphanonly: "Set the mode of operation from one of overwrite_all, orphan_only [overwrite_all]"
    where_write_output: "Where to write output to [stdout]"
    rg_line_text: "@RG line text"
    id_rg_use: "ID of @RG line in existing header to use"
    no_pg: "Do not add a PG line"
    input_fmt: "[,OPT[=VAL]]...\\nSpecify input format (SAM, BAM, CRAM)"
    input_fmt_option: "[=VAL]\\nSpecify a single input file format option in the form\\nof OPTION or OPTION=VALUE"
    output_fmt: "[,OPT[=VAL]]...\\nSpecify output format (SAM, BAM, CRAM)"
    output_fmt_option: "[=VAL]\\nSpecify a single output file format option in the form\\nof OPTION or OPTION=VALUE"
    reference: "Reference sequence FASTA FILE [null]"
    threads: "Number of additional threads to use [0]"
    write_index: "Automatically index the output files [off]"
    verbosity: "Set level of verbosity\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_fmt_option = "${in_output_fmt_option}"
  }
}