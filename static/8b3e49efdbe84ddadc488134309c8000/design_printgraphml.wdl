version 1.0

task DesignPrintgraphml.py {
  input {
    String? graph_ml
    Boolean? read_structures_constraints
    String? layout
    File? file
    String? write_graph_png
  }
  command <<<
    design-printgraphml.py \
      ~{if defined(graph_ml) then ("--graphml " +  '"' + graph_ml + '"') else ""} \
      ~{true="--input" false="" read_structures_constraints} \
      ~{if defined(layout) then ("--layout " +  '"' + layout + '"') else ""} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{if defined(write_graph_png) then ("--output " +  '"' + write_graph_png + '"') else ""}
  >>>
  parameter_meta {
    graph_ml: "Read graphml file with the given filename."
    read_structures_constraints: "Read custom structures and sequence constraints from stdin"
    layout: "Specify the plotting layout: components - vertice in connected components will be close to each other; circle: vertices will be drawn on a circle"
    file: "Read file in *.inp format"
    write_graph_png: "Write graph to PNG file with the given filename."
  }
}