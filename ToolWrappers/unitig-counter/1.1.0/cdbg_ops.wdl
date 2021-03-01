version 1.0

task Cdbgops {
  input {
    String? graph
    File? nodes
    File? edges
    String? source
    File? source_list
    String? target
    Boolean? all
    File? unit_igs
    Int? length
    Boolean? repeats
    String? mode
  }
  command <<<
    cdbg_ops \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{if defined(nodes) then ("--nodes " +  '"' + nodes + '"') else ""} \
      ~{if defined(edges) then ("--edges " +  '"' + edges + '"') else ""} \
      ~{if defined(source) then ("--source " +  '"' + source + '"') else ""} \
      ~{if defined(source_list) then ("--source-list " +  '"' + source_list + '"') else ""} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if (all) then "--all" else ""} \
      ~{if defined(unit_igs) then ("--unitigs " +  '"' + unit_igs + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if (repeats) then "--repeats" else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    graph: "Prefix of graph files"
    nodes: "Name of .node file"
    edges: "Name of .edges.dbg file"
    source: "Sequence of source node"
    source_list: "File containing sequences of source nodes"
    target: "Sequence of target node"
    all: "Generate distances to all other unitigs"
    unit_igs: "File containing unitigs to extend"
    length: "(=100)    Maximum extension length"
    repeats: "Allow loops in extensions"
    mode: "Mode of operation"
  }
  output {
    File out_stdout = stdout()
  }
}