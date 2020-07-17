version 1.0

task Ray {
  input {
    Boolean? version
    String? specifies_directory_outputted
    Boolean? disable_recycling
    Boolean? debug_recycling
    Boolean? ignore_seeds
    Boolean? merge_seeds
    Boolean? disable_scaffold_er
    Int? minimum_seed_length
    Int? minimum_contig_length
    Boolean? color_space
    Int? use_maximum_seed_coverage
    Int? use_minimum_seed_coverage
    String? bloom_filter_bits
    String? hash_table_buckets
    String? hash_table_buckets_per_group
    String? hash_table_load_factor_threshold
    Boolean? hash_table_verbosity
    String? search
    Boolean? one_color_per_file
    Boolean? enable_neighbourhoods
    Boolean? writes_amos_file
    Boolean? write_km_ers
    Boolean? graph_only
    Boolean? write_read_markers
    Boolean? write_seeds
    Boolean? write_extensions
    Boolean? write_contig_paths
    Boolean? write_marker_summary
    Boolean? show_memory_usage
    Boolean? show_memory_allocations
    String? write_checkpoints
    String? read_checkpoints
    String? read_write_checkpoints
    Boolean? route_messages
    String? connection_type
    String? routing_graph_degree
    String debugging
    String ray_output_slash_output_numbers_dot_txt
    String ray_output_slash_coverage_distribution_dot_txt
    String ray_output_slash_coverage_distribution_analysis_dot_txt
    String ray_output_slash_degree_distribution_dot_txt
    String ray_output_slash_km_ers_dot_txt
    String ray_output_slash_number_of_sequences_dot_txt
    String ray_output_slash_sequence_partition_dot_txt
    String rayoutputamosafg_assembly_representation
    String communication
  }
  command <<<
    Ray \
      ~{debugging} \
      ~{ray_output_slash_output_numbers_dot_txt} \
      ~{ray_output_slash_coverage_distribution_dot_txt} \
      ~{ray_output_slash_coverage_distribution_analysis_dot_txt} \
      ~{ray_output_slash_degree_distribution_dot_txt} \
      ~{ray_output_slash_km_ers_dot_txt} \
      ~{ray_output_slash_number_of_sequences_dot_txt} \
      ~{ray_output_slash_sequence_partition_dot_txt} \
      ~{rayoutputamosafg_assembly_representation} \
      ~{communication} \
      ~{true="-version" false="" version} \
      ~{if defined(specifies_directory_outputted) then ("-o " +  '"' + specifies_directory_outputted + '"') else ""} \
      ~{true="-disable-recycling" false="" disable_recycling} \
      ~{true="-debug-recycling" false="" debug_recycling} \
      ~{true="-ignore-seeds" false="" ignore_seeds} \
      ~{true="-merge-seeds" false="" merge_seeds} \
      ~{true="-disable-scaffolder" false="" disable_scaffold_er} \
      ~{if defined(minimum_seed_length) then ("-minimum-seed-length " +  '"' + minimum_seed_length + '"') else ""} \
      ~{if defined(minimum_contig_length) then ("-minimum-contig-length " +  '"' + minimum_contig_length + '"') else ""} \
      ~{true="-color-space" false="" color_space} \
      ~{if defined(use_maximum_seed_coverage) then ("-use-maximum-seed-coverage " +  '"' + use_maximum_seed_coverage + '"') else ""} \
      ~{if defined(use_minimum_seed_coverage) then ("-use-minimum-seed-coverage " +  '"' + use_minimum_seed_coverage + '"') else ""} \
      ~{if defined(bloom_filter_bits) then ("-bloom-filter-bits " +  '"' + bloom_filter_bits + '"') else ""} \
      ~{if defined(hash_table_buckets) then ("-hash-table-buckets " +  '"' + hash_table_buckets + '"') else ""} \
      ~{if defined(hash_table_buckets_per_group) then ("-hash-table-buckets-per-group " +  '"' + hash_table_buckets_per_group + '"') else ""} \
      ~{if defined(hash_table_load_factor_threshold) then ("-hash-table-load-factor-threshold " +  '"' + hash_table_load_factor_threshold + '"') else ""} \
      ~{true="-hash-table-verbosity" false="" hash_table_verbosity} \
      ~{if defined(search) then ("-search " +  '"' + search + '"') else ""} \
      ~{true="-one-color-per-file" false="" one_color_per_file} \
      ~{true="-enable-neighbourhoods" false="" enable_neighbourhoods} \
      ~{true="-amos" false="" writes_amos_file} \
      ~{true="-write-kmers" false="" write_km_ers} \
      ~{true="-graph-only" false="" graph_only} \
      ~{true="-write-read-markers" false="" write_read_markers} \
      ~{true="-write-seeds" false="" write_seeds} \
      ~{true="-write-extensions" false="" write_extensions} \
      ~{true="-write-contig-paths" false="" write_contig_paths} \
      ~{true="-write-marker-summary" false="" write_marker_summary} \
      ~{true="-show-memory-usage" false="" show_memory_usage} \
      ~{true="-show-memory-allocations" false="" show_memory_allocations} \
      ~{if defined(write_checkpoints) then ("-write-checkpoints " +  '"' + write_checkpoints + '"') else ""} \
      ~{if defined(read_checkpoints) then ("-read-checkpoints " +  '"' + read_checkpoints + '"') else ""} \
      ~{if defined(read_write_checkpoints) then ("-read-write-checkpoints " +  '"' + read_write_checkpoints + '"') else ""} \
      ~{true="-route-messages" false="" route_messages} \
      ~{if defined(connection_type) then ("-connection-type " +  '"' + connection_type + '"') else ""} \
      ~{if defined(routing_graph_degree) then ("-routing-graph-degree " +  '"' + routing_graph_degree + '"') else ""}
  >>>
  parameter_meta {
    version: "Displays Ray version and compilation options."
    specifies_directory_outputted: "Specifies the directory for outputted files. Default is RayOutput Other name: -output"
    disable_recycling: "Disables read recycling during the assembly reads will be set free in 3 cases: 1. the distance did not match for a pair 2. the read has not met its mate 3. the library population indicates a wrong placement see Constrained traversal of repeats with paired sequences. Sébastien Boisvert, Élénie Godzaridis, François Laviolette & Jacques Corbeil. First Annual RECOMB Satellite Workshop on Massively Parallel Sequencing, March 26-27 2011, Vancouver, BC, Canada."
    debug_recycling: "Debugs the recycling events"
    ignore_seeds: "Disables assembly by ignoring seeds."
    merge_seeds: "Merges seeds initially to reduce running time."
    disable_scaffold_er: "Disables the scaffolder."
    minimum_seed_length: "Changes the minimum seed length, default is 100 nucleotides"
    minimum_contig_length: "Changes the minimum contig length, default is 100 nucleotides"
    color_space: "Runs in color-space Needs csfasta files. Activated automatically if csfasta files are provided."
    use_maximum_seed_coverage: "Ignores any seed with a coverage depth above this threshold. The default is 4294967295."
    use_minimum_seed_coverage: "Sets the minimum seed coverage depth. Any path with a coverage depth lower than this will be discarded. The default is 0."
    bloom_filter_bits: "Sets the number of bits for the Bloom filter Default is auto bits (adaptive), 0 bits disables the Bloom filter."
    hash_table_buckets: "Sets the initial number of buckets. Must be a power of 2 ! Default value: 268435456"
    hash_table_buckets_per_group: "Sets the number of buckets per group for sparse storage Default value: 64, Must be between >=1 and <= 64"
    hash_table_load_factor_threshold: "Sets the load factor threshold for real-time resizing Default value: 0.75, must be >= 0.5 and < 1"
    hash_table_verbosity: "Activates verbosity for the distributed storage engine"
    search: "Provides a directory containing fasta files to be searched in the de Bruijn graph. Biological abundances will be written to RayOutput/BiologicalAbundances See Documentation/BiologicalAbundances.txt"
    one_color_per_file: "Sets one color per file instead of one per sequence. By default, each sequence in each file has a different color. For files with large numbers of sequences, using one single color per file may be more efficient."
    enable_neighbourhoods: "Computes contig neighborhoods in the de Bruijn graph Output file: RayOutput/NeighbourhoodRelations.txt"
    writes_amos_file: "Writes the AMOS file called RayOutput/AMOS.afg An AMOS file contains read positions on contigs. Can be opened with software with graphical user interface."
    write_km_ers: "Writes k-mer graph to RayOutput/kmers.txt The resulting file is not utilised by Ray. The resulting file is very large."
    graph_only: "Exits after building graph."
    write_read_markers: "Writes read markers to disk."
    write_seeds: "Writes seed DNA sequences to RayOutput/Rank<rank>.RaySeeds.fasta"
    write_extensions: "Writes extension DNA sequences to RayOutput/Rank<rank>.RayExtensions.fasta"
    write_contig_paths: "Writes contig paths with coverage values to RayOutput/Rank<rank>.RayContigPaths.txt"
    write_marker_summary: "Writes marker statistics."
    show_memory_usage: "Shows memory usage. Data is fetched from /proc on GNU/Linux Needs __linux__"
    show_memory_allocations: "Shows memory allocation events"
    write_checkpoints: "Write checkpoint files"
    read_checkpoints: "Read checkpoint files"
    read_write_checkpoints: "Read and write checkpoint files"
    route_messages: "Enables the Ray message router. Disabled by default. Messages will be routed accordingly so that any rank can communicate directly with only a few others. Without -route-messages, any rank can communicate directly with any other rank. Files generated: Routing/Connections.txt, Routing/Routes.txt and Routing/RelayEvents.txt and Routing/Summary.txt"
    connection_type: "Sets the connection type for routes. Accepted values are debruijn, hypercube, polytope, group, random, kautz and complete. Default is debruijn. torus: a k-ary n-cube, radix: k, dimension: n, degree: 2*dimension, vertices: radix^dimension polytope: a convex regular polytope, alphabet is {0,1,...,B-1} and the vertices is a power of B hypercube: a hypercube, alphabet is {0,1} and the vertices is a power of 2 debruijn: a full de Bruijn graph a given alphabet and diameter kautz: a full de Kautz graph, which is a subgraph of a de Bruijn graph group: silly model where one representative per group can communicate with outsiders random: Erdős–Rényi model complete: a full graph with all the possible connections With the type debruijn, the number of ranks must be a power of something. Examples: 256 = 16*16, 512=8*8*8, 49=7*7, and so on. Otherwise, don't use debruijn routing but use another one With the type kautz, the number of ranks n must be n=(k+1)*k^(d-1) for some k and d"
    routing_graph_degree: "Specifies the outgoing degree for the routing graph. See Documentation/Routing.txt"
    debugging: "-verify-message-integrity Checks message data reliability for any non-empty message. add '-D CONFIG_SSE_4_2' in the Makefile to use hardware instruction (SSE 4.2) -write-scheduling-data Writes RayPlatform scheduling information to RayOutput/Scheduling/ -write-plugin-data Writes data for plugins registered with the RayPlatform API to RayOutput/Plugins -run-profiler Runs the profiler as the code runs. By default, only show granularity warnings. Running the profiler increases running times. -with-profiler-details Shows number of messages sent and received in each methods during in each time slices (epochs). Needs -run-profiler. -debug Turns on -run-profiler and -with-profiler-details for debugging -show-communication-events Shows all messages sent and received. -show-read-placement Shows read placement in the graph during the extension. -debug-bubbles Debugs bubble code. Bubbles can be due to heterozygous sites or sequencing errors or other (unknown) events -debug-seeds Debugs seed code. Seeds are paths in the graph that are likely unique. -debug-fusions Debugs fusion code. -debug-scaffolder Debug the scaffolder."
    ray_output_slash_output_numbers_dot_txt: "Overall numbers for the assembly"
    ray_output_slash_coverage_distribution_dot_txt: "The distribution of coverage values"
    ray_output_slash_coverage_distribution_analysis_dot_txt: "Analysis of the coverage distribution"
    ray_output_slash_degree_distribution_dot_txt: "Distribution of ingoing and outgoing degrees"
    ray_output_slash_km_ers_dot_txt: "k-mer graph, required option: -write-kmers The resulting file is not utilised by Ray. The resulting file is very large."
    ray_output_slash_number_of_sequences_dot_txt: "Number of reads in each file"
    ray_output_slash_sequence_partition_dot_txt: "Sequence partition"
    rayoutputamosafg_assembly_representation: "RayOutput/AMOS.afg Assembly representation in AMOS format, required option: -amos"
    communication: "RayOutput/NetworkTest.txt Latencies in microseconds RayOutput/Rank<rank>NetworkTestData.txt Network test raw data"
  }
}