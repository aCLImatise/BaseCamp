version 1.0

task PlotGoTermpy {
  input {
    Boolean? description
    String? term
    String? engine
    Boolean? gml
    Boolean? disable_draw_parents
    Boolean? disable_draw_children
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
      ~{if (disable_draw_children) then "--disable-draw-children" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    description: "write term descriptions to stdout from the obo file\\nspecified in args"
    term: "write the parents and children of the query term"
    engine: "Graph plot engine, must be one of pygraphviz|pydot\\n[default: pygraphviz]"
    gml: "Write GML output (for Cytoscape) [default: none]"
    disable_draw_parents: "Do not draw parents of the query term"
    disable_draw_children: "Do not draw children of the query term\\n"
    obo_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}