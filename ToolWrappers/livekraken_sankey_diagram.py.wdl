version 1.0

task LivekrakenSankeyDiagrampy {
  input {
    File? in_file
    Boolean? color
    Boolean? compress
    String? rank
    String? top
    File? used_set_path
    File? names
    File? nodes
  }
  command <<<
    livekraken_sankey_diagram_py \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if (color) then "--color" else ""} \
      ~{if (compress) then "--compress" else ""} \
      ~{if defined(rank) then ("--rank " +  '"' + rank + '"') else ""} \
      ~{if defined(top) then ("--top " +  '"' + top + '"') else ""} \
      ~{if defined(used_set_path) then ("--output " +  '"' + used_set_path + '"') else ""} \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""} \
      ~{if defined(nodes) then ("--nodes " +  '"' + nodes + '"') else ""}
  >>>
  parameter_meta {
    in_file: "Used to list input files, can be used several times to\\ninput an ordered list of files"
    color: "Used to switch from red-green to red-blue color scheme"
    compress: "Used to \\\"compress\\\" unclassified nodes by only keeping\\na number of reads corresponding to the sum of flows\\nfrom/to nodes other than unclassified."
    rank: "Used to set on which level to bin the classified reads"
    top: "Used to determine the top x nodes to display for every\\ncycle (plus one node serving as bin for everyting\\nelse)"
    used_set_path: "Used to set the output directory path for the html and\\njson file"
    names: "Used to set the path to the names.dmp for taxonomic\\nresolution"
    nodes: "Used to set the path to the nodes.dmp for taxonomic\\nresolution\\n"
  }
  output {
    File out_stdout = stdout()
    File out_used_set_path = "${in_used_set_path}"
  }
}