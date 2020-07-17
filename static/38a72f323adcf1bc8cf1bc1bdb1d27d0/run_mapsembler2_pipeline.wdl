version 1.0

task RunMapsembler2Pipeline.sh {
  input {
    Boolean? file_containing_fasta
    String? reads_separated_gzipped
    Boolean? kind_fasta_contiggraph
    String? files_will_start
    String? set_length_fit
    String? set_minimal_coverage
    String? set_number_found
    String? estimated_genome_size
    String? set_process_search
    String? set_maximal_nodes
    String? set_maximal_depth
    String? this_message_exist
  }
  command <<<
    run_mapsembler2_pipeline.sh \
      ~{true="-s" false="" file_containing_fasta} \
      ~{if defined(reads_separated_gzipped) then ("-r " +  '"' + reads_separated_gzipped + '"') else ""} \
      ~{true="-t" false="" kind_fasta_contiggraph} \
      ~{if defined(files_will_start) then ("-p " +  '"' + files_will_start + '"') else ""} \
      ~{if defined(set_length_fit) then ("-k " +  '"' + set_length_fit + '"') else ""} \
      ~{if defined(set_minimal_coverage) then ("-c " +  '"' + set_minimal_coverage + '"') else ""} \
      ~{if defined(set_number_found) then ("-d " +  '"' + set_number_found + '"') else ""} \
      ~{if defined(estimated_genome_size) then ("-g " +  '"' + estimated_genome_size + '"') else ""} \
      ~{if defined(set_process_search) then ("-f " +  '"' + set_process_search + '"') else ""} \
      ~{if defined(set_maximal_nodes) then ("-x " +  '"' + set_maximal_nodes + '"') else ""} \
      ~{if defined(set_maximal_depth) then ("-y " +  '"' + set_maximal_depth + '"') else ""} \
      ~{if defined(this_message_exist) then ("-h " +  '"' + this_message_exist + '"') else ""}
  >>>
  parameter_meta {
    file_containing_fasta: ": file containing starters (fasta)"
    reads_separated_gzipped: "of reads separated by space, surrounded by the '\"' character. Note that reads may be in fasta or fastq format, gzipped or not. Example: -r \"data_sample/reads_sequence1.fasta   data_sample/reads_sequence2.fasta.gz\"."
    kind_fasta_contiggraph: ": kind of assembly: 1=unitig (fasta), 2=contig (fasta), 3=unitig (graph), 4=contig(graph)"
    files_will_start: "All out files will start with this prefix. Example: -p my_prefix"
    set_length_fit: "Set the length of used kmers. Must fit the compiled value. Default=31. Example -k 31"
    set_minimal_coverage: "Set the minimal coverage. Default=5. Example -c 5"
    set_number_found: "Set the number of authorized substitutions used while mapping reads on found SNPs. Default=1. Example: -d 1"
    estimated_genome_size: "Estimated genome size. Used only to control memory usage. e.g. 3 billion (3000000000) uses 4Gb of RAM. Default=10 million. Example: -d 10000000"
    set_process_search: "Set the process of search in the graph (1=Breadth  and 2=Depth). Default=1. Example: -f 1"
    set_maximal_nodes: "Set the maximal nodes length . Default=40. Example: -x 40"
    set_maximal_depth: "Set the maximal graph depth . Default=10000. Example: -y 10000"
    this_message_exist: "this message and exist"
  }
}