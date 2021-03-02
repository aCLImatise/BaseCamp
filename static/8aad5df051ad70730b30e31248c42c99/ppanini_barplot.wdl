version 1.0

task PpaniniBarplot {
  input {
    String? p_panini_input
    String? p_panini_output
    String? summary_table
    String? scale
    String? output_plot
  }
  command <<<
    ppanini_barplot \
      ~{if defined(p_panini_input) then ("--ppanini-input " +  '"' + p_panini_input + '"') else ""} \
      ~{if defined(p_panini_output) then ("--ppanini-output " +  '"' + p_panini_output + '"') else ""} \
      ~{if defined(summary_table) then ("--summary-table " +  '"' + summary_table + '"') else ""} \
      ~{if defined(scale) then ("--scale " +  '"' + scale + '"') else ""} \
      ~{if defined(output_plot) then ("--output " +  '"' + output_plot + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    p_panini_input: "Gene abundance table"
    p_panini_output: "PPANINI output table"
    summary_table: "Summary table"
    scale: "Scale: abundance or counts [default: abundance]"
    output_plot: "output plot)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}