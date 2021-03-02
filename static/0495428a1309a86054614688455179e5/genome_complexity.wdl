version 1.0

task Genomecomplexity {
  input {
    File? fasta_file_evaluate
    Int? length_consider_default
    Boolean? just_compress_graph
    Boolean? comprss_first_node
    Boolean? interpret_genome_circular
    Boolean? display_start_positions
    Boolean? display_sequences_node
    Int? only_show_first
    Boolean? just_compute_graph
  }
  command <<<
    genome_complexity \
      ~{if defined(fasta_file_evaluate) then ("-f " +  '"' + fasta_file_evaluate + '"') else ""} \
      ~{if defined(length_consider_default) then ("-k " +  '"' + length_consider_default + '"') else ""} \
      ~{if (just_compress_graph) then "-c" else ""} \
      ~{if (comprss_first_node) then "-e" else ""} \
      ~{if (interpret_genome_circular) then "-C" else ""} \
      ~{if (display_start_positions) then "-p" else ""} \
      ~{if (display_sequences_node) then "-d" else ""} \
      ~{if defined(only_show_first) then ("-D " +  '"' + only_show_first + '"') else ""} \
      ~{if (just_compute_graph) then "-S" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fasta_file_evaluate: "fasta file to evaluate"
    length_consider_default: "Length of mers to consider (default:30)"
    just_compress_graph: "Just compress graph, dont apply other simplifications"
    comprss_first_node: "Dont comprss the very first or last node in the graph"
    interpret_genome_circular: "Interpret genome as circular"
    display_start_positions: "Display the start positions and length of each sequence"
    display_sequences_node: "Display the sequences for edge node"
    only_show_first: "Only show first and last 4 bp for sequences longer than <len>"
    just_compute_graph: "Just Compute graph statistics"
  }
  output {
    File out_stdout = stdout()
  }
}