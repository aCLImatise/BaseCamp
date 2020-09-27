version 1.0

task Mapsembler2Extend {
  input {
    Int? default_strict_sequence
    Int? size_kmers_used
    Int? sequence_covered_reads
    Int? estimation_size_genome
    Int? limit_length_default
    Int? limit_max_graph
    File? stores_index_files
    File? where_write_default
    String? kind_of_prosses
    String? this_message_exit
    String to_do
  }
  command <<<
    mapsembler2_extend \
      ~{to_do} \
      ~{if defined(default_strict_sequence) then ("-t " +  '"' + default_strict_sequence + '"') else ""} \
      ~{if defined(size_kmers_used) then ("-k " +  '"' + size_kmers_used + '"') else ""} \
      ~{if defined(sequence_covered_reads) then ("-c " +  '"' + sequence_covered_reads + '"') else ""} \
      ~{if defined(estimation_size_genome) then ("-g " +  '"' + estimation_size_genome + '"') else ""} \
      ~{if defined(limit_length_default) then ("-x " +  '"' + limit_length_default + '"') else ""} \
      ~{if defined(limit_max_graph) then ("-y " +  '"' + limit_max_graph + '"') else ""} \
      ~{if defined(stores_index_files) then ("-i " +  '"' + stores_index_files + '"') else ""} \
      ~{if defined(where_write_default) then ("-o " +  '"' + where_write_default + '"') else ""} \
      ~{if defined(kind_of_prosses) then ("-p " +  '"' + kind_of_prosses + '"') else ""} \
      ~{if defined(this_message_exit) then ("-h " +  '"' + this_message_exit + '"') else ""}
  >>>
  parameter_meta {
    default_strict_sequence: "Default: 1\\n1: a strict sequence: any branching stops the extension\\n2: a consensus sequence: contiging approach\\n3: a strict graph: any branching is conserved in the graph\\n4: a consensus graph: \\\"small\\\" polymorphism is merged, but \\\"large\\\" structures are represented"
    size_kmers_used: ": Size of the k-mers used duriung the extension phase Default: 31. Accepted range, depends on the compilation (make k=42 for instance)"
    sequence_covered_reads: ": a sequence is covered by at least min_coverage coherent reads. Default: 2"
    estimation_size_genome: ": estimation of the size of the genome whose reads come from.\\nIt is in bp, does not need to be accurate, only controls memory usage. Default: 3 billion"
    limit_length_default: ": limit max of nodes length. Default: 40"
    limit_max_graph: ": limit max of graph depth.Default: 10000"
    stores_index_files: ": stores the index files in files starting with this prefix name. Can be re-used latter. Default: \\\"index\\\"\\nIF THE FILE \\\"index_name.bloom\\\" EXISTS: the index is not re-created"
    where_write_default: ": where to write outputs. Default: \\\"res_mapsembler\\\""
    kind_of_prosses: ": kind of prosses Breadth or Depth. Default: Breadth"
    this_message_exit: "this message and exit"
    to_do: "OPTIONS"
  }
  output {
    File out_stdout = stdout()
  }
}