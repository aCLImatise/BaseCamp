version 1.0

task Mhap {
  input {
    Boolean? filter_threshold
    Boolean? max_shift
    Boolean? min_olap_length
    Boolean? min_store_length
    Boolean? no_rc
    Boolean? no_self
    Boolean? no_tf
    Boolean? num_hashes
    Boolean? num_min_matches
    Boolean? num_threads
    Boolean? ordered_km_er_size
    Boolean? ordered_sketch_size
    Boolean? repeat_idf_scale
    Boolean? repeat_weight
    Boolean? settings
    File? store_full_id
    Boolean? supress_noise
    Boolean? threshold
    File? default_kmer_filter
    Boolean? default_kmer_size
    Boolean? only_directory_directory
    File? default_usage_fasta
    Boolean? only_fasta_file
  }
  command <<<
    mhap \
      ~{if (filter_threshold) then "--filter-threshold" else ""} \
      ~{if (max_shift) then "--max-shift" else ""} \
      ~{if (min_olap_length) then "--min-olap-length" else ""} \
      ~{if (min_store_length) then "--min-store-length" else ""} \
      ~{if (no_rc) then "--no-rc" else ""} \
      ~{if (no_self) then "--no-self" else ""} \
      ~{if (no_tf) then "--no-tf" else ""} \
      ~{if (num_hashes) then "--num-hashes" else ""} \
      ~{if (num_min_matches) then "--num-min-matches" else ""} \
      ~{if (num_threads) then "--num-threads" else ""} \
      ~{if (ordered_km_er_size) then "--ordered-kmer-size" else ""} \
      ~{if (ordered_sketch_size) then "--ordered-sketch-size" else ""} \
      ~{if (repeat_idf_scale) then "--repeat-idf-scale" else ""} \
      ~{if (repeat_weight) then "--repeat-weight" else ""} \
      ~{if (settings) then "--settings" else ""} \
      ~{if (store_full_id) then "--store-full-id" else ""} \
      ~{if (supress_noise) then "--supress-noise" else ""} \
      ~{if (threshold) then "--threshold" else ""} \
      ~{if (default_kmer_filter) then "-f" else ""} \
      ~{if (default_kmer_size) then "-k" else ""} \
      ~{if (only_directory_directory) then "-p" else ""} \
      ~{if (default_usage_fasta) then "-q" else ""} \
      ~{if (only_fasta_file) then "-s" else ""}
  >>>
  parameter_meta {
    filter_threshold: ", default = 1.0E-5\\n[double], The cutoff at which the k-mer in the k-mer filter file is considered repetitive. This value for a specific k-mer is specified in the second column in the filter file. If no filter file is provided, this option is ignored."
    max_shift: ", default = 0.2\\n[double], Region size to the left and right of the estimated overlap, as derived from the median shift and sequence length, where a k-mer matches are still considered valid. Second stage filter only."
    min_olap_length: ", default = 116\\n[int], The minimum length of the read that used for overlapping. Used to filter out short reads from FASTA file."
    min_store_length: ", default = 0\\n[int], The minimum length of the read that is stored in the box. Used to filter out short reads from FASTA file."
    no_rc: ", default = false\\nDo not store or do comparison of the reverse compliment strings."
    no_self: ", default = false\\nDo not compute the overlaps between sequences inside a box. Should be used when the to and from sequences are coming from different files."
    no_tf: ", default = false\\nDo not perform the tf weighing, in the tf-idf weighing."
    num_hashes: ", default = 512\\n[int], Number of min-mers to be used in MinHashing."
    num_min_matches: ", default = 3\\n[int], Minimum # min-mer that must be shared before computing second stage filter. Any sequences below that value are considered non-overlapping."
    num_threads: ", default = 8\\n[int], nNumber of threads to use for computation. Typically set to #cores."
    ordered_km_er_size: ", default = 12\\n[int] The size of k-mers used in the ordered second stage filter."
    ordered_sketch_size: ", default = 1536\\n[int] The sketch size for second stage filter."
    repeat_idf_scale: ", default = 3.0\\n[double] The upper range of the idf (from tf-idf) scale. The full scale will be [1,X], where X is the parameter."
    repeat_weight: ", default = 0.9\\n[double] Repeat suppression strength for tf-idf weighing. <0.0 do unweighted MinHash (version 1.0), >=1.0 do only the tf weighing. To perform no idf weighting, do no supply -f option."
    settings: ", default = 0\\nSet all unset parameters for the default settings. Same defaults are applied to Nanopore and Pacbio reads. 0) None, 1) Default, 2) Fast, 3) Sensitive."
    store_full_id: ", default = false\\nStore full IDs as seen in FASTA files, rather than storing just the sequence position in the file. Some FASTA files have long IDS, slowing output of results. This options is ignored when using compressed file format. Indexed file (-s) is indexed first, followed by -q files in alphabetical order."
    supress_noise: ", default = 0\\n[int] 0) Does nothing, 1) completely removes any k-mers not specified in the filter file, 2) supresses k-mers not specified in the filter file, similar to repeats."
    threshold: ", default = 0.78\\n[double], The threshold cutoff for the second stage sort-merge filter. This is based on the identity score computed from the Jaccard distance of k-mers (size given by ordered-kmer-size) in the overlapping regions."
    default_kmer_filter: ", default = \\\"\\\"\\nk-mer filter file used for filtering out highly repetative k-mers. Must be sorted in descending order of frequency (second column)."
    default_kmer_size: ", default = 16\\n[int], k-mer size used for MinHashing. The k-mer size for second stage filter is seperate, and can also be modified."
    only_directory_directory: ", default = \\\"\\\"\\nUsage 2 only. The directory containing FASTA files that should be converted to binary format for storage."
    default_usage_fasta: ", default = \\\"\\\"\\nUsage 1: The FASTA file of reads, or a directory of files, that will be compared to the set of reads in the box (see -s). Usage 2: The output directory for the binary formatted dat files."
    only_fasta_file: ", default = \\\"\\\"\\nUsage 1 only. The FASTA or binary dat file (see Usage 2) of reads that will be stored in a box, and that all subsequent reads will be compared to.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_store_full_id = "${in_store_full_id}"
    File out_default_kmer_filter = "${in_default_kmer_filter}"
    File out_default_usage_fasta = "${in_default_usage_fasta}"
  }
}