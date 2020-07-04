version 1.0

task Pathwaymatcher.pyMatchModifiedPeptides {
  input {
    String? mapping
    String? fast_a
    Boolean? graph
    Boolean? graph_gene
    String? graph_proteo_form
    Boolean? graph_uniprot
    String? input_file_path
    String? match_type
    String? path_prefix_output
    String? range
    Boolean? top_level_pathways
    File? jar
    Boolean? gt
    String java
    String match_modified_peptides
  }
  command <<<
    pathwaymatcher.py match-modified-peptides \
      ~{java} \
      ~{match_modified_peptides} \
      ~{if defined(mapping) then ("--mapping " +  '"' + mapping + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{true="--graph" false="" graph} \
      ~{true="--graphGene" false="" graph_gene} \
      ~{if defined(graph_proteo_form) then ("--graphProteoform " +  '"' + graph_proteo_form + '"') else ""} \
      ~{true="--graphUniprot" false="" graph_uniprot} \
      ~{if defined(input_file_path) then ("--input " +  '"' + input_file_path + '"') else ""} \
      ~{if defined(match_type) then ("--matchType " +  '"' + match_type + '"') else ""} \
      ~{if defined(path_prefix_output) then ("--output " +  '"' + path_prefix_output + '"') else ""} \
      ~{if defined(range) then ("--range " +  '"' + range + '"') else ""} \
      ~{true="--topLevelPathways" false="" top_level_pathways} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""} \
      ~{true="-gT" false="" gt}
  >>>
  parameter_meta {
    mapping: "Path to directory with the static mapping files. By default uses the mapping files integrated in the jar file."
    fast_a: "Path and name of the fasta file containing the Proteins where to find the peptides."
    graph: "Create default connection graph according to input type."
    graph_gene: "Create gene connection graph"
    graph_proteo_form: "proteoform connection graph"
    graph_uniprot: "Create protein connection graph"
    input_file_path: "Input file with path"
    match_type: "Proteoform match criteria. Valid values: STRICT, SUPERSET, SUPERSET_NO_TYPES, SUBSET, SUBSET_NO_TYPES, ONE, ONE_NO_TYPES, ACCESSION. Default: SUBSET"
    path_prefix_output: "Path and prefix for the output files: search.tsv (list of reactions and pathways containing the input), analysis.tsv (over-representation analysis) and networks files."
    range: "Integer range of error for PTM sites. Default: 0"
    top_level_pathways: "Show Top Level Pathways in the search result."
    jar: ""
    gt: ""
    java: ""
    match_modified_peptides: ""
  }
}