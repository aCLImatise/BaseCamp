version 1.0

task GotreeReformat {
  input {
    String? input_tree_default
    String? input_format
    File? output_file_default
    String? format
    Int? seed
    Int? threads
    String newick
    String nexus
    String phylo_xml
  }
  command <<<
    gotree reformat \
      ~{newick} \
      ~{nexus} \
      ~{phylo_xml} \
      ~{if defined(input_tree_default) then ("--input " +  '"' + input_tree_default + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(output_file_default) then ("--output " +  '"' + output_file_default + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    input_tree_default: "Input tree (default \\\"stdin\\\")"
    input_format: "Input tree format (newick, nexus, or phyloxml), alias to --format (default \\\"newick\\\")"
    output_file_default: "Output file (default \\\"stdout\\\")"
    format: "Input tree format (newick, nexus, or phyloxml) (default \\\"newick\\\")"
    seed: "Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)"
    threads: "Number of threads (Max=8) (default 1)"
    newick: "Reformats an input tree file into Newick format"
    nexus: "Reformats an input tree file into Nexus format"
    phylo_xml: "Reformats an input tree file into PhyloXML format"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_default = "${in_output_file_default}"
  }
}