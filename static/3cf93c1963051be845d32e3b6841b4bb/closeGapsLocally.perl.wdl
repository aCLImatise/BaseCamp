version 1.0

task CloseGapsLocallyperl {
  input {
    Directory? celera_terminator_directory
    File? reads_file
    Directory? output_directory
    Boolean? jellyfish_hash_size
    Boolean? min_km_er_len
    Boolean? max_km_er_len
    Boolean? num_threads
    Boolean? same__numthreads
    Boolean? contig_length_for_joining
    Boolean? contig_length_for_fishing
    Boolean? max_nodes
    Boolean? reduce_read_set_km_er_size
    Boolean? keep_directories
    Boolean? max_reads_in_memory
    Boolean? faux_insert_mean
    Boolean? faux_insert_stdev
    Boolean? num_stdev_s_allowed
  }
  command <<<
    closeGapsLocally_perl \
      ~{if defined(celera_terminator_directory) then ("--Celera-terminator-directory " +  '"' + celera_terminator_directory + '"') else ""} \
      ~{if defined(reads_file) then ("--reads-file " +  '"' + reads_file + '"') else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if (jellyfish_hash_size) then "-s" else ""} \
      ~{if (min_km_er_len) then "--min-kmer-len" else ""} \
      ~{if (max_km_er_len) then "--max-kmer-len" else ""} \
      ~{if (num_threads) then "--num-threads" else ""} \
      ~{if (same__numthreads) then "-t" else ""} \
      ~{if (contig_length_for_joining) then "--contig-length-for-joining" else ""} \
      ~{if (contig_length_for_fishing) then "--contig-length-for-fishing" else ""} \
      ~{if (max_nodes) then "--maxnodes" else ""} \
      ~{if (reduce_read_set_km_er_size) then "--reduce-read-set-kmer-size" else ""} \
      ~{if (keep_directories) then "--keep-directories" else ""} \
      ~{if (max_reads_in_memory) then "--max-reads-in-memory" else ""} \
      ~{if (faux_insert_mean) then "--faux-insert-mean" else ""} \
      ~{if (faux_insert_stdev) then "--faux-insert-stdev" else ""} \
      ~{if (num_stdev_s_allowed) then "--num-stdevs-allowed" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    celera_terminator_directory: ": specify the Celera terminator directory\\nwhere the assembly whose gaps must be closed exists"
    reads_file: ": specify a read file to use (multiple files allowed,\\nso long as the flag is repeated)"
    output_directory: ": specify the output directory"
    jellyfish_hash_size: "# : the jellyfish hash size"
    min_km_er_len: "# : specify the min kmer len used (default: 17)"
    max_km_er_len: "# : specify the max kmer len used (default: 65)"
    num_threads: "# : specify the number of threads (default: 1)"
    same__numthreads: "# : same as --num-threads #"
    contig_length_for_joining: "# : The length of sequence at the ends of the contigs\\nwhich create the faux mate pairs which are joined (default: 100)"
    contig_length_for_fishing: "# : The length of sequence at the ends of the contigs\\nto be used to find reads which might fit in the gaps (default: 100)"
    max_nodes: "# : The maximum number of nodes allowed when trying to join the\\nfaux reads (default: 200000)"
    reduce_read_set_km_er_size: "# : The k-mer size for fishing reads into buckets.\\n(default: 21)"
    keep_directories: ": Keep the local directories (default: false)"
    max_reads_in_memory: ": The maximum number of reads whose sequence can be kept\\nin memory at one time (default: 100000000)"
    faux_insert_mean: ": The mean of the insert size used for the faux reads around\\na gap (default: 500)"
    faux_insert_stdev: ": The stdev of the insert size used for the faux reads around\\na gap (default: 200)"
    num_stdev_s_allowed: "# : The maximum number of standard deviations that the\\nlength of the join can deviate from the estimate output\\nby the Celera assembler. The standard deviation generated\\nby the Celera assembler is used. (default: 3)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}