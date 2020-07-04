version 1.0

task PlotGoTerm.py {
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
    plot_go_term.py \
      ~{obo_file} \
      ~{true="--description" false="" description} \
      ~{if defined(term) then ("--term " +  '"' + term + '"') else ""} \
      ~{if defined(engine) then ("--engine " +  '"' + engine + '"') else ""} \
      ~{true="--gml" false="" gml} \
      ~{true="--disable-draw-parents" false="" disable_draw_parents} \
      ~{true="--disable-draw-children" false="" disable_draw_children}
  >>>
  parameter_meta {
    description: "write term descriptions to stdout from the obo file specified in args"
    term: "write the parents and children of the query term"
    engine: "Graph plot engine, must be one of pygraphviz|pydot [default: pygraphviz]"
    gml: "Write GML output (for Cytoscape) [default: none]"
    disable_draw_parents: "Do not draw parents of the query term"
    disable_draw_children: "Do not draw children of the query term"
    obo_file: ""
  }
}