version 1.0

task GenomeComplexityFast {
  input {
    String? fasta_file_evaluate
    String? length_consider_default
    Boolean? just_compress_graph
    Boolean? comprss_first_node
    Boolean? interpret_genome_circular
    Boolean? display_start_positions
    Boolean? display_sequences_edge
    String? only_show_bp
    Boolean? just_compute_graph
    String genome_complexity
  }
  command <<<
    genome-complexity-fast \
      ~{genome_complexity} \
      ~{if defined(fasta_file_evaluate) then ("-f " +  '"' + fasta_file_evaluate + '"') else ""} \
      ~{if defined(length_consider_default) then ("-k " +  '"' + length_consider_default + '"') else ""} \
      ~{true="-c" false="" just_compress_graph} \
      ~{true="-e" false="" comprss_first_node} \
      ~{true="-C" false="" interpret_genome_circular} \
      ~{true="-p" false="" display_start_positions} \
      ~{true="-d" false="" display_sequences_edge} \
      ~{if defined(only_show_bp) then ("-D " +  '"' + only_show_bp + '"') else ""} \
      ~{true="-S" false="" just_compute_graph}
  >>>
  parameter_meta {
    fasta_file_evaluate: "fasta file to evaluate"
    length_consider_default: "Length of mers to consider (default:30)"
    just_compress_graph: "Just compress graph, dont apply other simplifications"
    comprss_first_node: "Dont comprss the very first or last node in the graph"
    interpret_genome_circular: "Interpret genome as circular"
    display_start_positions: "Display the start positions and length of each sequence"
    display_sequences_edge: "Display the sequences for edge node"
    only_show_bp: "Only show first and last 4 bp for sequences longer than <len>"
    just_compute_graph: "Just Compute graph statistics"
    genome_complexity: ""
  }
}