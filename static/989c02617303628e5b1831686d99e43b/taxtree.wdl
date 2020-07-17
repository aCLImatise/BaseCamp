version 1.0

task Taxtree.py {
  input {
    String? gb_dir
    String? names
    String? nodes
    String? merged
  }
  command <<<
    taxtree.py \
      ~{if defined(gb_dir) then ("--gbdir " +  '"' + gb_dir + '"') else ""} \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""} \
      ~{if defined(nodes) then ("--nodes " +  '"' + nodes + '"') else ""} \
      ~{if defined(merged) then ("--merged " +  '"' + merged + '"') else ""}
  >>>
  parameter_meta {
    gb_dir: "genbank directory"
    names: "names.dmp file to use"
    nodes: "nodes.dmp file to use"
    merged: "merged.dmp file to use"
  }
}