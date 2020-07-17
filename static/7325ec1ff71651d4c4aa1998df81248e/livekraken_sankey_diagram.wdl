version 1.0

task LivekrakenSankeyDiagram.py {
  input {
    String? in_file
    Boolean? color
    Boolean? compress
    String? rank
    String? top
    String? used_set_path
    String? names
    String? nodes
  }
  command <<<
    livekraken_sankey_diagram.py \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{true="--color" false="" color} \
      ~{true="--compress" false="" compress} \
      ~{if defined(rank) then ("--rank " +  '"' + rank + '"') else ""} \
      ~{if defined(top) then ("--top " +  '"' + top + '"') else ""} \
      ~{if defined(used_set_path) then ("--output " +  '"' + used_set_path + '"') else ""} \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""} \
      ~{if defined(nodes) then ("--nodes " +  '"' + nodes + '"') else ""}
  >>>
  parameter_meta {
    in_file: "Used to list input files, can be used several times to input an ordered list of files"
    color: "Used to switch from red-green to red-blue color scheme"
    compress: "Used to \"compress\" unclassified nodes by only keeping a number of reads corresponding to the sum of flows from/to nodes other than unclassified."
    rank: "Used to set on which level to bin the classified reads"
    top: "Used to determine the top x nodes to display for every cycle (plus one node serving as bin for everyting else)"
    used_set_path: "Used to set the output directory path for the html and json file"
    names: "Used to set the path to the names.dmp for taxonomic resolution"
    nodes: "Used to set the path to the nodes.dmp for taxonomic resolution"
  }
}