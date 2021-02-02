version 1.0

task CloseGapsperl {
  input {
    Directory? celera_terminator_directory
    File? reads_file
    Directory? output_directory
    Boolean? jellyfish_hash_size
    Boolean? min_km_er_len
    Boolean? max_km_er_len
    Boolean? num_threads
    Boolean? _same_
    Boolean? contig_length_for_joining
    Boolean? use_all_k_unit_igs
    Boolean? max_nodes
    Boolean? kuni_tig_continuation_number
    Directory? dir_for_k_unit_igs
    Boolean? reduce_read_set
    Boolean? contig_length_for_fishing
    Boolean? no_clean
  }
  command <<<
    closeGaps_perl \
      ~{if defined(celera_terminator_directory) then ("--Celera-terminator-directory " +  '"' + celera_terminator_directory + '"') else ""} \
      ~{if defined(reads_file) then ("--reads-file " +  '"' + reads_file + '"') else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if (jellyfish_hash_size) then "--jellyfish-hash-size" else ""} \
      ~{if (min_km_er_len) then "--min-kmer-len" else ""} \
      ~{if (max_km_er_len) then "--max-kmer-len" else ""} \
      ~{if (num_threads) then "--num-threads" else ""} \
      ~{if (_same_) then "-t" else ""} \
      ~{if (contig_length_for_joining) then "--contig-length-for-joining" else ""} \
      ~{if (use_all_k_unit_igs) then "--use-all-kunitigs" else ""} \
      ~{if (max_nodes) then "--maxnodes" else ""} \
      ~{if (kuni_tig_continuation_number) then "--kunitig-continuation-number" else ""} \
      ~{if defined(dir_for_k_unit_igs) then ("--dir-for-kunitigs " +  '"' + dir_for_k_unit_igs + '"') else ""} \
      ~{if (reduce_read_set) then "--reduce-read-set" else ""} \
      ~{if (contig_length_for_fishing) then "--contig-length-for-fishing" else ""} \
      ~{if (no_clean) then "--noclean" else ""}
  >>>
  parameter_meta {
    celera_terminator_directory: ": specify the Celera terminator directory\\nwhere the assembly whose gaps must be closed exists"
    reads_file: ": specify a read file to use (multiple files allowed,\\nso long as the flag is repeated)"
    output_directory: ": specify the output directory"
    jellyfish_hash_size: "# : specify the jellyfish hash size"
    min_km_er_len: "# : specify the min kmer len used (default: 17)"
    max_km_er_len: "# : specify the max kmer len used (default: 31)"
    num_threads: "# : specify the number of threads (default: 1)"
    _same_: "# : same as --num-threads #"
    contig_length_for_joining: "# : The length of sequence at the ends of the contigs\\nwhich create the faux mate pairs which are joined (default: 100)"
    use_all_k_unit_igs: ": Use k-unitigs which are the k-mer length as well as all those longer than\\nthe k-mer length. (The default is not to use k-unis of the k-mer length)"
    max_nodes: "# : The maximum number of nodes allowed when trying to join the\\nfaux reads (default: 2000)"
    kuni_tig_continuation_number: "# : specify the number to continue when running\\ncreate_k_unitigs (the -m and -M options to that program)\\n(currently \\\"invalidated\\\") (default: 2)"
    dir_for_k_unit_igs: ": specifies the directory to get k-unitigs from\\nif we have them"
    reduce_read_set: "# : Start by reducing the read set to only those that\\nmatch a k-unitig from the genomic sequences surrounding\\na gap. The number specifies the k-mer size used to\\nfind these matches. (Don't make it too small.)"
    contig_length_for_fishing: "# : The length of sequence at the ends of the contigs\\nto be used to find reads which might fit in the gaps (default: 100)"
    no_clean: ": Don't clean up after the run"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}