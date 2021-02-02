version 1.0

task Taxtreepy {
  input {
    Directory? gb_dir
    File? names
    File? nodes
    File? mergeddmp_file_use
    String search_closest_mitogenomes
  }
  command <<<
    taxtree_py \
      ~{search_closest_mitogenomes} \
      ~{if defined(gb_dir) then ("--gbdir " +  '"' + gb_dir + '"') else ""} \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""} \
      ~{if defined(nodes) then ("--nodes " +  '"' + nodes + '"') else ""} \
      ~{if defined(mergeddmp_file_use) then ("--merged " +  '"' + mergeddmp_file_use + '"') else ""}
  >>>
  parameter_meta {
    gb_dir: "genbank directory"
    names: "names.dmp file to use"
    nodes: "nodes.dmp file to use"
    mergeddmp_file_use: "merged.dmp file to use"
    search_closest_mitogenomes: "search for closest mitogenomes"
  }
  output {
    File out_stdout = stdout()
  }
}