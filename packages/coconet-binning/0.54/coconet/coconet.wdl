version 1.0

task Coconet {
  input {
    Int? fragment_length
    Int? threads
    File? fast_a
    Array[String] coverage
    File? path_output_output
    Int? min_ctg_len
    Int? min_prevalence
    Int? min_mapping_quality
    Int? flag
    String? fl_range
    Directory? tmp_dir
    Int? fragment_step
    Float? test_ratio
    Int? n_train
    Int? n_test
    Int? batch_size
    Float? learning_rate
    Int? load_batch
    Int? compo_neurons
    Int? cover_neurons
    Int? cover_filters
    Int? cover_kernel
    Int? cover_stride
    Int? merge_neurons
    Boolean? norm
    Int? km_er
    Boolean? no_rc
    Int? w_size
    Int? w_step
    Int? n_frags
    Int? max_neighbors
    Float? theta
    Int? gamma_one
    Int? gamma_two
    Boolean? v
  }
  command <<<
    coconet \
      ~{if defined(fragment_length) then ("--fragment-length " +  '"' + fragment_length + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(path_output_output) then ("--output " +  '"' + path_output_output + '"') else ""} \
      ~{if defined(min_ctg_len) then ("--min-ctg-len " +  '"' + min_ctg_len + '"') else ""} \
      ~{if defined(min_prevalence) then ("--min-prevalence " +  '"' + min_prevalence + '"') else ""} \
      ~{if defined(min_mapping_quality) then ("--min-mapping-quality " +  '"' + min_mapping_quality + '"') else ""} \
      ~{if defined(flag) then ("--flag " +  '"' + flag + '"') else ""} \
      ~{if defined(fl_range) then ("--fl-range " +  '"' + fl_range + '"') else ""} \
      ~{if defined(tmp_dir) then ("--tmp-dir " +  '"' + tmp_dir + '"') else ""} \
      ~{if defined(fragment_step) then ("--fragment-step " +  '"' + fragment_step + '"') else ""} \
      ~{if defined(test_ratio) then ("--test-ratio " +  '"' + test_ratio + '"') else ""} \
      ~{if defined(n_train) then ("--n-train " +  '"' + n_train + '"') else ""} \
      ~{if defined(n_test) then ("--n-test " +  '"' + n_test + '"') else ""} \
      ~{if defined(batch_size) then ("--batch-size " +  '"' + batch_size + '"') else ""} \
      ~{if defined(learning_rate) then ("--learning-rate " +  '"' + learning_rate + '"') else ""} \
      ~{if defined(load_batch) then ("--load-batch " +  '"' + load_batch + '"') else ""} \
      ~{if defined(compo_neurons) then ("--compo-neurons " +  '"' + compo_neurons + '"') else ""} \
      ~{if defined(cover_neurons) then ("--cover-neurons " +  '"' + cover_neurons + '"') else ""} \
      ~{if defined(cover_filters) then ("--cover-filters " +  '"' + cover_filters + '"') else ""} \
      ~{if defined(cover_kernel) then ("--cover-kernel " +  '"' + cover_kernel + '"') else ""} \
      ~{if defined(cover_stride) then ("--cover-stride " +  '"' + cover_stride + '"') else ""} \
      ~{if defined(merge_neurons) then ("--merge-neurons " +  '"' + merge_neurons + '"') else ""} \
      ~{if (norm) then "--norm" else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if (no_rc) then "--no-rc" else ""} \
      ~{if defined(w_size) then ("--wsize " +  '"' + w_size + '"') else ""} \
      ~{if defined(w_step) then ("--wstep " +  '"' + w_step + '"') else ""} \
      ~{if defined(n_frags) then ("--n-frags " +  '"' + n_frags + '"') else ""} \
      ~{if defined(max_neighbors) then ("--max-neighbors " +  '"' + max_neighbors + '"') else ""} \
      ~{if defined(theta) then ("--theta " +  '"' + theta + '"') else ""} \
      ~{if defined(gamma_one) then ("--gamma1 " +  '"' + gamma_one + '"') else ""} \
      ~{if defined(gamma_two) then ("--gamma2 " +  '"' + gamma_two + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/coconet-binning:0.54--py_0"
  }
  parameter_meta {
    fragment_length: "Length of contig fragments in bp (default: 1024)"
    threads: "Number of threads (default: 20)"
    fast_a: "Path to your assembly file (fasta formatted) (default:\\nNone)"
    coverage: "List of paths to your coverage files (bam formatted)\\n(default: None)"
    path_output_output: "Path to output directory (default: output)"
    min_ctg_len: "Minimum contig length. Default (-1) is twice the\\nfragment length (default: -1)"
    min_prevalence: "Minimum contig prevalence for binning. Contig with\\nless that value are filtered out. (default: 2)"
    min_mapping_quality: "Minimum mapping quality for bam filtering (default:\\n50)"
    flag: "am Flag for bam filtering (default: 3596)"
    fl_range: "FL_RANGE\\nOnly allow for paired alignments with spacing within\\nthis range (default: [])"
    tmp_dir: "Temporary directory for bam processing (default:\\n./tmp42)"
    fragment_step: "Fragments spacing (default: 128)"
    test_ratio: "Ratio for train / test split (default: 0.1)"
    n_train: "Number of training examples (default: 1000000)"
    n_test: "Number of test examples (default: 10000)"
    batch_size: "Batch size for training (default: 256)"
    learning_rate: "Learning rate for gradient descent (default: 0.0001)"
    load_batch: "Number of coverage batch to load in memory. Consider\\nlowering this value if your RAM is limited. (default:\\n200)"
    compo_neurons: "COMPO_NEURONS\\nNumber of neurons for the composition dense layers\\n(x2) (default: [64, 32])"
    cover_neurons: "COVER_NEURONS\\nNumber of neurons for the coverage dense layers (x2)\\n(default: [64, 32])"
    cover_filters: "Number of filters for convolution layer of coverage\\nnetwork. (default: 32)"
    cover_kernel: "Kernel size for convolution layer of coverage network.\\n(default: 7)"
    cover_stride: "Convolution stride for convolution layer of coverage\\nnetwork. (default: 3)"
    merge_neurons: "Number of neurons for the merging layer (x1) (default:\\n32)"
    norm: "Normalize the k-mer occurrences to frequencies\\n(default: False)"
    km_er: "k-mer size for composition vector (default: 4)"
    no_rc: "Do not add the reverse complement k-mer occurrences to\\nthe composition vector. (default: False)"
    w_size: "Smoothing window size for coverage vector (default:\\n64)"
    w_step: "Subsampling step for coverage vector (default: 32)"
    n_frags: "Number of fragments to split the contigs for the\\nclustering phase (default: 30)"
    max_neighbors: "Maximum number of neighbors to consider to compute the\\nadjacency matrix. (default: 100)"
    theta: "Minimum percent of edges between two contigs to form\\nan edge between them (default: 0.8)"
    gamma_one: "CPM optimization value for the first run of the Leiden\\nclustering (default: 0.1)"
    gamma_two: "CPM optimization value for the second run of the\\nLeiden clustering (default: 0.75)\\n"
    v: ""
  }
  output {
    File out_stdout = stdout()
    File out_path_output_output = "${in_path_output_output}"
  }
}