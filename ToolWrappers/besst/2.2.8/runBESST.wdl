version 1.0

task RunBESST {
  input {
    Boolean? deactivate_pathfinder_module
    File? fasta_file_containing
    Array[String] paths_to_bamfiles
    Array[String] orientation
    Array[String] mean_read_length
    Array[String] mean_insert_size
    Array[String] estimated_standard_deviation
    String? user_over_value
    String? z_min
    Int? maximum_length_ratio
    Boolean? haplotype_detection_function
    Array[String] threshold_value_filter
    Array[String] threshold_value_least
    Array[String] contig_size_threshold
    Int? filter_contigs
    Int? min_mapq
    File? iter
    String? score_cut_off
    Int? max_extensions
    Boolean? no_ilp
    Boolean? faster_ilp
    Boolean? print_scores
    Int? kmer_size_used
    Int? mmer_usted_creating
    File? path_output_directory
    Boolean? deactivate_sequencing_duplicates
    Boolean? parallellize_work_load
    Boolean? devel
    Boolean? plots
    File? separate_repeats
    Boolean? dfs_traversal
    Boolean? bfs_traversal
    Int? max_contig_overlap
    String contigs_dot
    String regions_dot
  }
  command <<<
    runBESST \
      ~{contigs_dot} \
      ~{regions_dot} \
      ~{if (deactivate_pathfinder_module) then "-y" else ""} \
      ~{if defined(fasta_file_containing) then ("-c " +  '"' + fasta_file_containing + '"') else ""} \
      ~{if defined(paths_to_bamfiles) then ("-f " +  '"' + paths_to_bamfiles + '"') else ""} \
      ~{if defined(orientation) then ("-orientation " +  '"' + orientation + '"') else ""} \
      ~{if defined(mean_read_length) then ("-r " +  '"' + mean_read_length + '"') else ""} \
      ~{if defined(mean_insert_size) then ("-m " +  '"' + mean_insert_size + '"') else ""} \
      ~{if defined(estimated_standard_deviation) then ("-s " +  '"' + estimated_standard_deviation + '"') else ""} \
      ~{if defined(user_over_value) then ("-z " +  '"' + user_over_value + '"') else ""} \
      ~{if defined(z_min) then ("-z_min " +  '"' + z_min + '"') else ""} \
      ~{if defined(maximum_length_ratio) then ("-a " +  '"' + maximum_length_ratio + '"') else ""} \
      ~{if (haplotype_detection_function) then "-g" else ""} \
      ~{if defined(threshold_value_filter) then ("-T " +  '"' + threshold_value_filter + '"') else ""} \
      ~{if defined(threshold_value_least) then ("-e " +  '"' + threshold_value_least + '"') else ""} \
      ~{if defined(contig_size_threshold) then ("-k " +  '"' + contig_size_threshold + '"') else ""} \
      ~{if defined(filter_contigs) then ("-filter_contigs " +  '"' + filter_contigs + '"') else ""} \
      ~{if defined(min_mapq) then ("--min_mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(iter) then ("--iter " +  '"' + iter + '"') else ""} \
      ~{if defined(score_cut_off) then ("--score_cutoff " +  '"' + score_cut_off + '"') else ""} \
      ~{if defined(max_extensions) then ("--max_extensions " +  '"' + max_extensions + '"') else ""} \
      ~{if (no_ilp) then "--NO_ILP" else ""} \
      ~{if (faster_ilp) then "--FASTER_ILP" else ""} \
      ~{if (print_scores) then "--print_scores" else ""} \
      ~{if defined(kmer_size_used) then ("-K " +  '"' + kmer_size_used + '"') else ""} \
      ~{if defined(mmer_usted_creating) then ("-M " +  '"' + mmer_usted_creating + '"') else ""} \
      ~{if defined(path_output_directory) then ("-o " +  '"' + path_output_directory + '"') else ""} \
      ~{if (deactivate_sequencing_duplicates) then "-d" else ""} \
      ~{if (parallellize_work_load) then "-q" else ""} \
      ~{if (devel) then "-devel" else ""} \
      ~{if (plots) then "-plots" else ""} \
      ~{if (separate_repeats) then "--separate_repeats" else ""} \
      ~{if (dfs_traversal) then "--dfs_traversal" else ""} \
      ~{if (bfs_traversal) then "--bfs_traversal" else ""} \
      ~{if defined(max_contig_overlap) then ("-max_contig_overlap " +  '"' + max_contig_overlap + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    deactivate_pathfinder_module: "Deactivate pathfinder module for including smaller"
    fasta_file_containing: "Fasta file containing contigs."
    paths_to_bamfiles: "Path(s) to bamfile(s)."
    orientation: "Mapped orientation for each library given with -f\\noption. Valid input is either fr (forward reverse\\norientation) or rf (reverse forward orientation)."
    mean_read_length: "Mean read length of libraries."
    mean_insert_size: "Mean insert size of libraries."
    estimated_standard_deviation: "Estimated standard deviation of libraries."
    user_over_value: "User specified coverage cutoff. (Manually filter out\\ncontigs with coverage over this value)"
    z_min: "User specified coverage cutoff. (Manually filter out\\ncontigs with coverage under this value)"
    maximum_length_ratio: "Maximum length ratio for merging of haplotypic"
    haplotype_detection_function: "Haplotype detection function, default = off"
    threshold_value_filter: "Threshold value filter out reads that are mapped too\\nfar apart given insert size."
    threshold_value_least: "Threshold value for the least nr of links that is\\nneeded to create an edge. Default for all libs:\\nInferred by BESST (see value in output in\\nStatistics.txt)."
    contig_size_threshold: "Contig size threshold for the library (all contigs\\nbelow this size is discarded from the 'large contigs'\\nscaffolding, but included in pathfinding). Default:\\nSet to same as -T parameter"
    filter_contigs: "Contigs under this size is discarded from all\\nscaffolding (including pathfinding). they are also not\\nincluded in the resulting scaffold output fasta file\\nand any of the other files as well as all statistics.\\nDefault: All contigs are included"
    min_mapq: "Lowest mapping quality allowed in order to use the\\nread pair (both reads needs to have equal or bigger\\nmapq than this value). This value is compared to the\\nmapping quality column in the BAM file."
    iter: "The number of iterations performed in breadth first\\nsearch for placing smaller contigs."
    score_cut_off: "Only store paths with score larger than score_cutoff."
    max_extensions: "Maximum number of (large) scaffolds to search for\\npaths extensions with."
    no_ilp: "Warning: Do not use this option! This option is\\nincluded only for benchmarking purposes of old BESST\\nalgorithm. This option will give poor results as it\\nmimics earlier versions of BESST."
    faster_ilp: "Faster but worse performing heuristic solution to\\nsolving ILPs. May be used if BESST is too slow.\\nHowever, lowering --iter is usually more effective to\\nreduce scaffolding time."
    print_scores: "Print BESST scores on edges in the Scaffolding graph."
    kmer_size_used: "k-mer size used in de brujin graph for obtaining\\ncontigs in assembly, default 50"
    mmer_usted_creating: "m-mer usted for creating connection graph. Should be\\nset lower than k-mer size"
    path_output_directory: "Path to output directory. BESST will create a folder\\nnamed 'BESST_output' in the directory given by the\\npath."
    deactivate_sequencing_duplicates: "Deactivate sequencing duplicates detection"
    parallellize_work_load: "Parallellize work load of path finder module in case\\nof multiple processors available."
    devel: "Run in development mode (bug checking and memory usage\\netc.)"
    plots: "Plot coverage, histograms of scores e.t.c."
    separate_repeats: "Separates contigs classified as repeats by BESST into\\na file 'repeats.fa'. They are not included in the main\\nscaffolding output file with this flag specified."
    dfs_traversal: "Depth first search with DP in the contig graph\\n(default)."
    bfs_traversal: "Choose a breadth first search in the contig graph.\\nDefault is the new depth first search with a DP\\napproch that seems to outperform previous traversals.\\nThis option is kept for evaluation but is not\\nreccomended to specify."
    max_contig_overlap: "BESST checks for overlapping ends in contigs that are\\nadjacent in a scaffold. This parameter sets the\\nmaximum identical overlap to search for, default is\\n200."
    contigs_dot: "--no_score            Statistical scoring is not performed. BESST instead"
    regions_dot: "-b HAPLTHRESHOLD      Number of standard deviations over mean/2 of coverage"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_directory = "${in_path_output_directory}"
    File out_separate_repeats = "${in_separate_repeats}"
  }
}