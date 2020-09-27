version 1.0

task Designprintgraphmlpy {
  input {
    File? graph_ml
    Boolean? read_custom_structures
    File? file
    File? write_graph_png
    String? l
    String stdin
  }
  command <<<
    design_printgraphml_py \
      ~{stdin} \
      ~{if defined(graph_ml) then ("--graphml " +  '"' + graph_ml + '"') else ""} \
      ~{if (read_custom_structures) then "--input" else ""} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{if defined(write_graph_png) then ("--output " +  '"' + write_graph_png + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""}
  >>>
  parameter_meta {
    graph_ml: "Read graphml file with the given filename."
    read_custom_structures: "Read custom structures and sequence constraints from"
    file: "Read file in *.inp format"
    write_graph_png: "Write graph to PNG file with the given filename.\\n"
    l: ""
    stdin: "-l LAYOUT, --layout LAYOUT"
  }
  output {
    File out_stdout = stdout()
  }
}