version 1.0

task Kissplice {
  input {
    Int? input_fastaq_read
    Int? kmer_size_default
    Int? maximum_number_branching
    Int? maximal_length_k
    Int? minimum_length_
    Int? maximum_length_longest
    File? path_prefix_prebuilt
    File? path_store_results
    File? specific_directory_absolute
    Int? number_cores_must
    Int? changes_types_snps
    Boolean? verbose_mode
    Boolean? keep_nodesedges_file
    Int? integer_kmers_present
    Int? percentage_edges_removed
    Int? estimated_size_default
    Int? edit_distance_threshold
    Int? maximal_number_bubbles
    Int? mismatches
    Int? counts
    Int? min_overlap
    Int? timeout
    Boolean? output_context
    Boolean? output_branch_count
    Boolean? keep_bccs
    Boolean? experimental
    Int? max_memory
    Boolean? keep_counts
    String bubble
  }
  command <<<
    kissplice \
      ~{bubble} \
      ~{if defined(input_fastaq_read) then ("-r " +  '"' + input_fastaq_read + '"') else ""} \
      ~{if defined(kmer_size_default) then ("-k " +  '"' + kmer_size_default + '"') else ""} \
      ~{if defined(maximum_number_branching) then ("-b " +  '"' + maximum_number_branching + '"') else ""} \
      ~{if defined(maximal_length_k) then ("-l " +  '"' + maximal_length_k + '"') else ""} \
      ~{if defined(minimum_length_) then ("-m " +  '"' + minimum_length_ + '"') else ""} \
      ~{if defined(maximum_length_longest) then ("-M " +  '"' + maximum_length_longest + '"') else ""} \
      ~{if defined(path_prefix_prebuilt) then ("-g " +  '"' + path_prefix_prebuilt + '"') else ""} \
      ~{if defined(path_store_results) then ("-o " +  '"' + path_store_results + '"') else ""} \
      ~{if defined(specific_directory_absolute) then ("-d " +  '"' + specific_directory_absolute + '"') else ""} \
      ~{if defined(number_cores_must) then ("-t " +  '"' + number_cores_must + '"') else ""} \
      ~{if defined(changes_types_snps) then ("-s " +  '"' + changes_types_snps + '"') else ""} \
      ~{if (verbose_mode) then "-v" else ""} \
      ~{if (keep_nodesedges_file) then "-u" else ""} \
      ~{if defined(integer_kmers_present) then ("-c " +  '"' + integer_kmers_present + '"') else ""} \
      ~{if defined(percentage_edges_removed) then ("-C " +  '"' + percentage_edges_removed + '"') else ""} \
      ~{if defined(estimated_size_default) then ("-z " +  '"' + estimated_size_default + '"') else ""} \
      ~{if defined(edit_distance_threshold) then ("-e " +  '"' + edit_distance_threshold + '"') else ""} \
      ~{if defined(maximal_number_bubbles) then ("-y " +  '"' + maximal_number_bubbles + '"') else ""} \
      ~{if defined(mismatches) then ("--mismatches " +  '"' + mismatches + '"') else ""} \
      ~{if defined(counts) then ("--counts " +  '"' + counts + '"') else ""} \
      ~{if defined(min_overlap) then ("--min_overlap " +  '"' + min_overlap + '"') else ""} \
      ~{if defined(timeout) then ("--timeout " +  '"' + timeout + '"') else ""} \
      ~{if (output_context) then "--output-context" else ""} \
      ~{if (output_branch_count) then "--output-branch-count" else ""} \
      ~{if (keep_bccs) then "--keep-bccs" else ""} \
      ~{if (experimental) then "--experimental" else ""} \
      ~{if defined(max_memory) then ("--max-memory " +  '"' + max_memory + '"') else ""} \
      ~{if (keep_counts) then "--keep-counts" else ""}
  >>>
  parameter_meta {
    input_fastaq_read: "input fasta/q read files or compressed (.gz) fasta/q\\nfiles (mutiple, such as \\\"-r file1 -r file2...\\\")"
    kmer_size_default: "k-mer size (default=41)"
    maximum_number_branching: "maximum number of branching nodes (default 5)"
    maximal_length_k: "maximal length of the shorter path (default: 2k+1)"
    minimum_length_: "minimum length of the shorter path (default 2k-8)"
    maximum_length_longest: "maximum length of the longest path (default 1000000),\\nskipped exons longer than UL_MAX are not reported"
    path_prefix_prebuilt: "path and prefix to pre-built de Bruijn graph (suffixed\\nby .edges/.nodes) if jointly used with -r, graph used\\nto find bubbles and reads used for quantification"
    path_store_results: "path to store the results and the summary log file\\n(default = ./results)"
    specific_directory_absolute: "specific directory (absolute path) where to build\\ntemporary files (default temporary directory\\notherwise)"
    number_cores_must: "number of cores (must be <= number of physical cores)"
    changes_types_snps: "0, 1 or 2. Changes which types of SNPs will be output.\\nIf 0 (default), will not output SNPs. If 1, will\\noutput Type0a-SNPs. If 2, will output Type0a and\\nType0b SNPs (warning: this option may increase a lot\\nthe running time. You might also want to try the\\nexperimental algorithm here)"
    verbose_mode: "Verbose mode"
    keep_nodesedges_file: "keep the nodes/edges file for unfinished bccs"
    integer_kmers_present: "an integer, k-mers present strictly less than this\\nnumber of times in the dataset will be discarded\\n(default 2)"
    percentage_edges_removed: "a percentage from [0,1), edges with relative coverage\\nbelow this number are removed (default 0.05)"
    estimated_size_default: "estimated genome/transcriptome size (default = 1G)"
    edit_distance_threshold: "edit distance threshold, if the two sequences (paths)\\nof a bubble have edit distance smaller than this\\nthreshold, the bubble is classified as an inexact\\nrepeat (default 3)"
    maximal_number_bubbles: "maximal number of bubbles enumeration in each bcc. If\\nexceeded, no bubble is output for the bcc (default\\n100M)"
    mismatches: "Maximal number of substitutions authorized between a\\nread and a fragment (for quantification only), default\\n0. If you increase the mismatch and use --counts think\\nof increasing min_overlap too."
    counts: "0,1 or 2 . Changes how the counts will be reported. If\\n0 (default): total counts, if 1: counts on junctions,\\nif 2: all counts. see User guide for more information"
    min_overlap: "Set how many nt must overlap a junction to be counted\\nby --counts option. Default=3. see User guide for more\\ninformation"
    timeout: "max amount of time (in seconds) spent for enumerating\\nbubbles in each bcc. If exceeded, no bubble is output\\nfor the bcc (default 100000)"
    output_context: "Will output the maximum non-ambiguous context of a"
    output_branch_count: "Will output the number of branching nodes in each\\npath."
    keep_bccs: "Keep the node/edges files for all bccs."
    experimental: "Uses a new experimental algorithm that searches for\\nbubbles by listing all paths."
    max_memory: "If you use the experimental algorithm, you must\\nprovide the maximum size of the process's virtual\\nmemory (address space) in megabytes (default\\nunlimited). WARNING: this option does not work on Mac\\noperating systems."
    keep_counts: "Keep the .counts file after the sequencing-errors-\\nremoval step.\\n"
    bubble: "--output-path         Will output the id of the nodes composing the two"
  }
  output {
    File out_stdout = stdout()
  }
}