version 1.0

task FlyesamtoolsAddreplacerg {
  input {
    String? set_mode_orphanonly
    File? where_write_output
    String? rg_line_text
    String? id_rg_use
    String? input_fmt
    File? input_fmt_option
    String? output_fmt
    File? output_fmt_option
    File? reference
    Int? threads
    String sam_tools
    String add_replace_rg
  }
  command <<<
    flye_samtools addreplacerg \
      ~{sam_tools} \
      ~{add_replace_rg} \
      ~{if defined(set_mode_orphanonly) then ("-m " +  '"' + set_mode_orphanonly + '"') else ""} \
      ~{if defined(where_write_output) then ("-o " +  '"' + where_write_output + '"') else ""} \
      ~{if defined(rg_line_text) then ("-r " +  '"' + rg_line_text + '"') else ""} \
      ~{if defined(id_rg_use) then ("-R " +  '"' + id_rg_use + '"') else ""} \
      ~{if defined(input_fmt) then ("--input-fmt " +  '"' + input_fmt + '"') else ""} \
      ~{if defined(input_fmt_option) then ("--input-fmt-option " +  '"' + input_fmt_option + '"') else ""} \
      ~{if defined(output_fmt) then ("--output-fmt " +  '"' + output_fmt + '"') else ""} \
      ~{if defined(output_fmt_option) then ("--output-fmt-option " +  '"' + output_fmt_option + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    set_mode_orphanonly: "Set the mode of operation from one of overwrite_all, orphan_only [overwrite_all]"
    where_write_output: "Where to write output to [stdout]"
    rg_line_text: "@RG line text"
    id_rg_use: "ID of @RG line in existing header to use"
    input_fmt: "[,OPT[=VAL]]...\\nSpecify input format (SAM, BAM, CRAM)"
    input_fmt_option: "[=VAL]\\nSpecify a single input file format option in the form\\nof OPTION or OPTION=VALUE"
    output_fmt: "[,OPT[=VAL]]...\\nSpecify output format (SAM, BAM, CRAM)"
    output_fmt_option: "[=VAL]\\nSpecify a single output file format option in the form\\nof OPTION or OPTION=VALUE"
    reference: "Reference sequence FASTA FILE [null]"
    threads: "Number of additional threads to use [0]\\n"
    sam_tools: ""
    add_replace_rg: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_fmt_option = "${in_output_fmt_option}"
  }
}