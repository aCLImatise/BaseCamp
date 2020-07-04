version 1.0

task RunBESST {
  input {
    Boolean? deactivate_pathfinder_module
    Boolean? no_score
    String? fasta_file_containing
    Array[String] paths_to_bamfiles
    Array[String] orientation
    Array[String] mean_read_length
    Array[String] mean_insert_size
    Array[String] estimated_standard_deviation
    String? user_over_value
    String? z_min
    String? maximum_length_ratio
    String? number_standard_allow
    Boolean? haplotype_detection_function
    Array[String] threshold_value_filter
    Array[String] threshold_value_least
    Array[Int] contig_size_threshold
    String? filter_contigs
    Int? min_mapq
    File? iter
    String? score_cut_off
    Int? max_extensions
    Boolean? no_ilp
    Boolean? faster_ilp
    Boolean? print_scores
    String? kmer_size_used
    String? usted_creating_graph
    String? path_output_besst
    Boolean? deactivate_sequencing_duplicates
    Boolean? parallellize_work_load
    Boolean? devel
    Boolean? plots
    Boolean? separate_repeats
    Boolean? dfs_traversal
    Boolean? bfs_traversal
    Int? max_contig_overlap
    String be_sst
  }
  command <<<
    runBESST \
      ~{be_sst} \
      ~{true="-y" false="" deactivate_pathfinder_module} \
      ~{true="--no_score" false="" no_score} \
      ~{if defined(fasta_file_containing) then ("-c " +  '"' + fasta_file_containing + '"') else ""} \
      ~{if defined(paths_to_bamfiles) then ("-f " +  '"' + paths_to_bamfiles + '"') else ""} \
      ~{if defined(orientation) then ("-orientation " +  '"' + orientation + '"') else ""} \
      ~{if defined(mean_read_length) then ("-r " +  '"' + mean_read_length + '"') else ""} \
      ~{if defined(mean_insert_size) then ("-m " +  '"' + mean_insert_size + '"') else ""} \
      ~{if defined(estimated_standard_deviation) then ("-s " +  '"' + estimated_standard_deviation + '"') else ""} \
      ~{if defined(user_over_value) then ("-z " +  '"' + user_over_value + '"') else ""} \
      ~{if defined(z_min) then ("-z_min " +  '"' + z_min + '"') else ""} \
      ~{if defined(maximum_length_ratio) then ("-a " +  '"' + maximum_length_ratio + '"') else ""} \
      ~{if defined(number_standard_allow) then ("-b " +  '"' + number_standard_allow + '"') else ""} \
      ~{true="-g" false="" haplotype_detection_function} \
      ~{if defined(threshold_value_filter) then ("-T " +  '"' + threshold_value_filter + '"') else ""} \
      ~{if defined(threshold_value_least) then ("-e " +  '"' + threshold_value_least + '"') else ""} \
      ~{if defined(contig_size_threshold) then ("-k " +  '"' + contig_size_threshold + '"') else ""} \
      ~{if defined(filter_contigs) then ("-filter_contigs " +  '"' + filter_contigs + '"') else ""} \
      ~{if defined(min_mapq) then ("--min_mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(iter) then ("--iter " +  '"' + iter + '"') else ""} \
      ~{if defined(score_cut_off) then ("--score_cutoff " +  '"' + score_cut_off + '"') else ""} \
      ~{if defined(max_extensions) then ("--max_extensions " +  '"' + max_extensions + '"') else ""} \
      ~{true="--NO_ILP" false="" no_ilp} \
      ~{true="--FASTER_ILP" false="" faster_ilp} \
      ~{true="--print_scores" false="" print_scores} \
      ~{if defined(kmer_size_used) then ("-K " +  '"' + kmer_size_used + '"') else ""} \
      ~{if defined(usted_creating_graph) then ("-M " +  '"' + usted_creating_graph + '"') else ""} \
      ~{if defined(path_output_besst) then ("-o " +  '"' + path_output_besst + '"') else ""} \
      ~{true="-d" false="" deactivate_sequencing_duplicates} \
      ~{true="-q" false="" parallellize_work_load} \
      ~{true="-devel" false="" devel} \
      ~{true="-plots" false="" plots} \
      ~{true="--separate_repeats" false="" separate_repeats} \
      ~{true="--dfs_traversal" false="" dfs_traversal} \
      ~{true="--bfs_traversal" false="" bfs_traversal} \
      ~{if defined(max_contig_overlap) then ("-max_contig_overlap " +  '"' + max_contig_overlap + '"') else ""}
  >>>
  parameter_meta {
    deactivate_pathfinder_module: "Deactivate pathfinder module for including smaller contigs."
    no_score: "Statistical scoring is not performed. BESST instead searches for paths between contigs."
    fasta_file_containing: "Fasta file containing contigs."
    paths_to_bamfiles: "Path(s) to bamfile(s)."
    orientation: "Mapped orientation for each library given with -f option. Valid input is either fr (forward reverse orientation) or rf (reverse forward orientation)."
    mean_read_length: "Mean read length of libraries."
    mean_insert_size: "Mean insert size of libraries."
    estimated_standard_deviation: "Estimated standard deviation of libraries."
    user_over_value: "User specified coverage cutoff. (Manually filter out contigs with coverage over this value)"
    z_min: "User specified coverage cutoff. (Manually filter out contigs with coverage under this value)"
    maximum_length_ratio: "Maximum length ratio for merging of haplotypic regions."
    number_standard_allow: "Number of standard deviations over mean/2 of coverage to allow for clasification of haplotype. Example: contigs with under mean/2 + 3sigma are indicated as potential haplotypes (tested later) if -b 3"
    haplotype_detection_function: "Haplotype detection function, default = off"
    threshold_value_filter: "Threshold value filter out reads that are mapped too far apart given insert size."
    threshold_value_least: "Threshold value for the least nr of links that is needed to create an edge. Default for all libs: Inferred by BESST (see value in output in Statistics.txt)."
    contig_size_threshold: "Contig size threshold for the library (all contigs below this size is discarded from the 'large contigs' scaffolding, but included in pathfinding). Default: Set to same as -T parameter"
    filter_contigs: "Contigs under this size is discarded from all scaffolding (including pathfinding). they are also not included in the resulting scaffold output fasta file and any of the other files as well as all statistics. Default: All contigs are included"
    min_mapq: "Lowest mapping quality allowed in order to use the read pair (both reads needs to have equal or bigger mapq than this value). This value is compared to the mapping quality column in the BAM file."
    iter: "The number of iterations performed in breadth first search for placing smaller contigs."
    score_cut_off: "Only store paths with score larger than score_cutoff."
    max_extensions: "Maximum number of (large) scaffolds to search for paths extensions with."
    no_ilp: "Warning: Do not use this option! This option is included only for benchmarking purposes of old BESST algorithm. This option will give poor results as it mimics earlier versions of BESST."
    faster_ilp: "Faster but worse performing heuristic solution to solving ILPs. May be used if BESST is too slow. However, lowering --iter is usually more effective to reduce scaffolding time."
    print_scores: "Print BESST scores on edges in the Scaffolding graph."
    kmer_size_used: "k-mer size used in de brujin graph for obtaining contigs in assembly, default 50"
    usted_creating_graph: "m-mer usted for creating connection graph. Should be set lower than k-mer size"
    path_output_besst: "Path to output directory. BESST will create a folder named 'BESST_output' in the directory given by the path."
    deactivate_sequencing_duplicates: "Deactivate sequencing duplicates detection"
    parallellize_work_load: "Parallellize work load of path finder module in case of multiple processors available."
    devel: "Run in development mode (bug checking and memory usage etc.)"
    plots: "Plot coverage, histograms of scores e.t.c."
    separate_repeats: "Separates contigs classified as repeats by BESST into a file 'repeats.fa'. They are not included in the main scaffolding output file with this flag specified."
    dfs_traversal: "Depth first search with DP in the contig graph (default)."
    bfs_traversal: "Choose a breadth first search in the contig graph. Default is the new depth first search with a DP approch that seems to outperform previous traversals. This option is kept for evaluation but is not reccomended to specify."
    max_contig_overlap: "BESST checks for overlapping ends in contigs that are adjacent in a scaffold. This parameter sets the maximum identical overlap to search for, default is 200."
    be_sst: ""
  }
}