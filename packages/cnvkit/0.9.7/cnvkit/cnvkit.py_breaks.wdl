version 1.0

task CnvkitpyBreaks {
  input {
    Int? min_probes
    File? output_table_file
  }
  command <<<
    cnvkit_py breaks \
      ~{if defined(min_probes) then ("--min-probes " +  '"' + min_probes + '"') else ""} \
      ~{if defined(output_table_file) then ("--output " +  '"' + output_table_file + '"') else ""}
  >>>
  parameter_meta {
    min_probes: "Minimum number of within-gene probes on both sides of\\na breakpoint to report it. [Default: 1]"
    output_table_file: "Output table file name.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_table_file = "${in_output_table_file}"
  }
}