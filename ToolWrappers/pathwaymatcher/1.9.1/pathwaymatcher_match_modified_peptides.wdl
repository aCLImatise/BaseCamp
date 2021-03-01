version 1.0

task PathwaymatcherMatchmodifiedpeptides {
  input {
    File? mapping
    File? fast_a
    Boolean? graph
    Boolean? graph_gene
    String? graph_proteo_form
    Boolean? graph_uniprot
    File? input_file_path
    String? match_type
    File? path_prefix_analysis
    Int? range
    Boolean? top_level_pathways
    Boolean? gt
    String? jar
    String java
    String match_modified_peptides
  }
  command <<<
    pathwaymatcher match_modified_peptides \
      ~{java} \
      ~{match_modified_peptides} \
      ~{if defined(mapping) then ("--mapping " +  '"' + mapping + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if (graph) then "--graph" else ""} \
      ~{if (graph_gene) then "--graphGene" else ""} \
      ~{if defined(graph_proteo_form) then ("--graphProteoform " +  '"' + graph_proteo_form + '"') else ""} \
      ~{if (graph_uniprot) then "--graphUniprot" else ""} \
      ~{if defined(input_file_path) then ("--input " +  '"' + input_file_path + '"') else ""} \
      ~{if defined(match_type) then ("--matchType " +  '"' + match_type + '"') else ""} \
      ~{if defined(path_prefix_analysis) then ("--output " +  '"' + path_prefix_analysis + '"') else ""} \
      ~{if defined(range) then ("--range " +  '"' + range + '"') else ""} \
      ~{if (top_level_pathways) then "--topLevelPathways" else ""} \
      ~{if (gt) then "-gT" else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mapping: "Path to directory with the static mapping files. By\\ndefault uses the mapping files integrated in the jar\\nfile."
    fast_a: "Path and name of the fasta file containing the Proteins\\nwhere to find the peptides."
    graph: "Create default connection graph according to input type."
    graph_gene: "Create gene connection graph"
    graph_proteo_form: "proteoform connection graph"
    graph_uniprot: "Create protein connection graph"
    input_file_path: "Input file with path"
    match_type: "Proteoform match criteria.\\nValid values: STRICT, SUPERSET, SUPERSET_NO_TYPES,\\nSUBSET, SUBSET_NO_TYPES, ONE, ONE_NO_TYPES,\\nACCESSION.\\nDefault: SUBSET"
    path_prefix_analysis: "Path and prefix for the output files: search.tsv (list\\nof reactions and pathways containing the input),\\nanalysis.tsv (over-representation analysis) and\\nnetworks files."
    range: "Integer range of error for PTM sites.\\nDefault: 0"
    top_level_pathways: "Show Top Level Pathways in the search result."
    gt: ""
    jar: ""
    java: ""
    match_modified_peptides: ""
  }
  output {
    File out_stdout = stdout()
  }
}