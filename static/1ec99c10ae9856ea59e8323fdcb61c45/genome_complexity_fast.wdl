version 1.0

task Genomecomplexityfast {
  input {
    File? fasta_file_evaluate
    Int? length_consider_default
    Boolean? just_compress_graph
    Boolean? comprss_very_first
    Boolean? interpret_genome_circular
    Boolean? display_start_positions
    Boolean? display_sequences_edge
    Int? only_show_bp
    Boolean? just_compute_graph
    String genome_complexity
  }
  command <<<
    genome_complexity_fast \
      ~{genome_complexity} \
      ~{if defined(fasta_file_evaluate) then ("-f " +  '"' + fasta_file_evaluate + '"') else ""} \
      ~{if defined(length_consider_default) then ("-k " +  '"' + length_consider_default + '"') else ""} \
      ~{if (just_compress_graph) then "-c" else ""} \
      ~{if (comprss_very_first) then "-e" else ""} \
      ~{if (interpret_genome_circular) then "-C" else ""} \
      ~{if (display_start_positions) then "-p" else ""} \
      ~{if (display_sequences_edge) then "-d" else ""} \
      ~{if defined(only_show_bp) then ("-D " +  '"' + only_show_bp + '"') else ""} \
      ~{if (just_compute_graph) then "-S" else ""}
  >>>
  parameter_meta {
    fasta_file_evaluate: "fasta file to evaluate"
    length_consider_default: "Length of mers to consider (default:30)"
    just_compress_graph: "Just compress graph, dont apply other simplifications"
    comprss_very_first: "Dont comprss the very first or last node in the graph"
    interpret_genome_circular: "Interpret genome as circular"
    display_start_positions: "Display the start positions and length of each sequence"
    display_sequences_edge: "Display the sequences for edge node"
    only_show_bp: "Only show first and last 4 bp for sequences longer than <len>"
    just_compute_graph: "Just Compute graph statistics"
    genome_complexity: ""
  }
  output {
    File out_stdout = stdout()
  }
}