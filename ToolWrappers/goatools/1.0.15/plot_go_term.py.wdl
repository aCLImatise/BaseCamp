version 1.0

task PlotGoTermpy {
  input {
    Boolean? description
    String? term
    String? engine
    Boolean? gml
    Boolean? disable_draw_parents
    Boolean? disable_draw_children
    File? output_filename_suffix
    Int? dpi
    String? obo_file
  }
  command <<<
    plot_go_term_py \
      ~{obo_file} \
      ~{if (description) then "--description" else ""} \
      ~{if defined(term) then ("--term " +  '"' + term + '"') else ""} \
      ~{if defined(engine) then ("--engine " +  '"' + engine + '"') else ""} \
      ~{if (gml) then "--gml" else ""} \
      ~{if (disable_draw_parents) then "--disable-draw-parents" else ""} \
      ~{if (disable_draw_children) then "--disable-draw-children" else ""} \
      ~{if defined(output_filename_suffix) then ("--output " +  '"' + output_filename_suffix + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/goatools:1.0.15--pyh3252c3a_0"
  }
  parameter_meta {
    description: "Write term descriptions to stdout from the obo file\\nspecified in args"
    term: "Write the parents and children of the query term"
    engine: "Graph plot engine, must be one of pygraphviz|pydot\\n[default: pygraphviz]"
    gml: "Write GML output (for Cytoscape) [default: none]"
    disable_draw_parents: "Do not draw parents of the query term"
    disable_draw_children: "Do not draw children of the query term"
    output_filename_suffix: "Output filename, suffix is image format, common\\nformats e.g. pdf|svg|png|jpg|... [default:\\nGO_lineage.pdf]"
    dpi: "Output figure dpi, ignored by vector image formats\\nlike svg and pdf [default: 96]\\n"
    obo_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_filename_suffix = "${in_output_filename_suffix}"
  }
}