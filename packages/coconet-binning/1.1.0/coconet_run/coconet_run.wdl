version 1.0

task CoconetRun {
  input {
    File? fast_a
    Int? h_five
    File? path_output_output
    Int? threads
    Boolean? debug
    Boolean? quiet
    Boolean? silent
    Directory? continue
    Array[String] bam
    Int? min_ctg_len
    Int? min_prevalence
    Int? min_mapping_quality
    Int? min_aln_coverage
    Int? flag
    String? tlen_range
    Int? min_dtr_size
    Int? fragment_step
    Float? test_ratio
    Int? n_train
    Int? n_test
    Float? learning_rate
    Int? batch_size
    Int? test_batch
    Int? patience
    Int? load_batch
    Int? compo_neurons
    Int? cover_neurons
    Int? cover_filters
    Int? cover_kernel
    Int? cover_stride
    Int? merge_neurons
    Int? km_er
    Boolean? no_rc
    Int? w_size
    Int? w_step
    Int? n_frags
    Int? max_neighbors
    String? vote_threshold
    String? algorithm
    Float? theta
    Int? gamma_one
    Int? gamma_two
    Int? n_clusters
    Boolean? recruit_small_contigs
    Int? fragment_length
    String? features
  }
  command <<<
    coconet run \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(h_five) then ("--h5 " +  '"' + h_five + '"') else ""} \
      ~{if defined(path_output_output) then ("--output " +  '"' + path_output_output + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if (continue) then "--continue" else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(min_ctg_len) then ("--min-ctg-len " +  '"' + min_ctg_len + '"') else ""} \
      ~{if defined(min_prevalence) then ("--min-prevalence " +  '"' + min_prevalence + '"') else ""} \
      ~{if defined(min_mapping_quality) then ("--min-mapping-quality " +  '"' + min_mapping_quality + '"') else ""} \
      ~{if defined(min_aln_coverage) then ("--min-aln-coverage " +  '"' + min_aln_coverage + '"') else ""} \
      ~{if defined(flag) then ("--flag " +  '"' + flag + '"') else ""} \
      ~{if defined(tlen_range) then ("--tlen-range " +  '"' + tlen_range + '"') else ""} \
      ~{if defined(min_dtr_size) then ("--min-dtr-size " +  '"' + min_dtr_size + '"') else ""} \
      ~{if defined(fragment_step) then ("--fragment-step " +  '"' + fragment_step + '"') else ""} \
      ~{if defined(test_ratio) then ("--test-ratio " +  '"' + test_ratio + '"') else ""} \
      ~{if defined(n_train) then ("--n-train " +  '"' + n_train + '"') else ""} \
      ~{if defined(n_test) then ("--n-test " +  '"' + n_test + '"') else ""} \
      ~{if defined(learning_rate) then ("--learning-rate " +  '"' + learning_rate + '"') else ""} \
      ~{if defined(batch_size) then ("--batch-size " +  '"' + batch_size + '"') else ""} \
      ~{if defined(test_batch) then ("--test-batch " +  '"' + test_batch + '"') else ""} \
      ~{if defined(patience) then ("--patience " +  '"' + patience + '"') else ""} \
      ~{if defined(load_batch) then ("--load-batch " +  '"' + load_batch + '"') else ""} \
      ~{if defined(compo_neurons) then ("--compo-neurons " +  '"' + compo_neurons + '"') else ""} \
      ~{if defined(cover_neurons) then ("--cover-neurons " +  '"' + cover_neurons + '"') else ""} \
      ~{if defined(cover_filters) then ("--cover-filters " +  '"' + cover_filters + '"') else ""} \
      ~{if defined(cover_kernel) then ("--cover-kernel " +  '"' + cover_kernel + '"') else ""} \
      ~{if defined(cover_stride) then ("--cover-stride " +  '"' + cover_stride + '"') else ""} \
      ~{if defined(merge_neurons) then ("--merge-neurons " +  '"' + merge_neurons + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if (no_rc) then "--no-rc" else ""} \
      ~{if defined(w_size) then ("--wsize " +  '"' + w_size + '"') else ""} \
      ~{if defined(w_step) then ("--wstep " +  '"' + w_step + '"') else ""} \
      ~{if defined(n_frags) then ("--n-frags " +  '"' + n_frags + '"') else ""} \
      ~{if defined(max_neighbors) then ("--max-neighbors " +  '"' + max_neighbors + '"') else ""} \
      ~{if defined(vote_threshold) then ("--vote-threshold " +  '"' + vote_threshold + '"') else ""} \
      ~{if defined(algorithm) then ("--algorithm " +  '"' + algorithm + '"') else ""} \
      ~{if defined(theta) then ("--theta " +  '"' + theta + '"') else ""} \
      ~{if defined(gamma_one) then ("--gamma1 " +  '"' + gamma_one + '"') else ""} \
      ~{if defined(gamma_two) then ("--gamma2 " +  '"' + gamma_two + '"') else ""} \
      ~{if defined(n_clusters) then ("--n-clusters " +  '"' + n_clusters + '"') else ""} \
      ~{if (recruit_small_contigs) then "--recruit-small-contigs" else ""} \
      ~{if defined(fragment_length) then ("--fragment-length " +  '"' + fragment_length + '"') else ""} \
      ~{if defined(features) then ("--features " +  '"' + features + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/coconet-binning:1.1.0--py_0"
  }
  parameter_meta {
    fast_a: "Path to your assembly file (fasta formatted) (default:\\nNone)"
    h_five: "Experimental: coverage in hdf5 format (keys are\\ncontigs, values are (sample, contig_len) ndarrays\\n(default: None)"
    path_output_output: "Path to output directory (default: output)"
    threads: "Number of threads (default: 5)"
    debug: "Print debugging statements (default: 20)"
    quiet: "Less verbose (default: None)"
    silent: "Only error messages (default: None)"
    continue: "Start from last checkpoint. The output directory needs\\nto be the same. (default: False)"
    bam: "List of paths to your coverage files (bam formatted)\\n(default: None)"
    min_ctg_len: "Minimum contig length (default: 2048)"
    min_prevalence: "Minimum contig prevalence for binning. Contig with\\nless that value are filtered out. (default: 2)"
    min_mapping_quality: "Minimum alignment quality (default: 30)"
    min_aln_coverage: "Discard alignments with less than 50% aligned\\nnucleotides"
    flag: "SAM flag for filtering (same as samtools \\\"-F\\\" option)\\n(default: 3596)"
    tlen_range: "TLEN_RANGE\\nOnly allow for paired alignments with spacing within\\nthis range (default: None)"
    min_dtr_size: "Minimum size of DTR to flag complete contigs (default:\\n10)"
    fragment_step: "Fragments spacing (default: 128)"
    test_ratio: "Ratio for train / test split (default: 0.1)"
    n_train: "Maximum number of training examples (default: 4000000)"
    n_test: "Number of test examples (default: 10000)"
    learning_rate: "Learning rate for gradient descent (default: 0.001)"
    batch_size: "Batch size for training (default: 256)"
    test_batch: "Run test every 400 batches"
    patience: "Early stopping if test accuracy does not improve for 5\\nconsecutive tests"
    load_batch: "Number of coverage batch to load in memory. Consider\\nlowering this value if your RAM is limited. (default:\\n100)"
    compo_neurons: "COMPO_NEURONS\\nNumber of neurons for the composition dense layers\\n(x2) (default: [64, 32])"
    cover_neurons: "COVER_NEURONS\\nNumber of neurons for the coverage dense layers (x2)\\n(default: [64, 32])"
    cover_filters: "Number of filters for convolution layer of coverage\\nnetwork. (default: 16)"
    cover_kernel: "Kernel size for convolution layer of coverage network.\\n(default: 4)"
    cover_stride: "Convolution stride for convolution layer of coverage\\nnetwork. (default: 2)"
    merge_neurons: "Number of neurons for the merging layer (x1) (default:\\n32)"
    km_er: "k-mer size for composition vector (default: 4)"
    no_rc: "Do not add the reverse complement k-mer occurrences to\\nthe composition vector. (default: False)"
    w_size: "Smoothing window size for coverage vector (default:\\n64)"
    w_step: "Subsampling step for coverage vector (default: 32)"
    n_frags: "Number of fragments to split the contigs for the\\nclustering phase (default: 30)"
    max_neighbors: "Maximum number of neighbors to consider to compute the\\nadjacency matrix. (default: 250)"
    vote_threshold: "When this parameter is not set, contig-contig edges\\nare computed by summing the probability between all\\npairwise fragments between them.Otherwise, adopt a\\nvoting strategy and sets a hard-threshold on the\\nprobabilityfrom each pairwise comparison. (default:\\nNone)"
    algorithm: "Algorithm for clustering the contig-contig graph.\\nNote: the number of cluster is required if \\\"spectral\\\"\\nis chosen. (default: leiden)"
    theta: "(leiden) Minimum percent of edges between two contigs\\nto form an edge between them (default: 0.8)"
    gamma_one: "(leiden) CPM optimization value for the first run of\\nthe Leiden clustering (default: 0.3)"
    gamma_two: "(leiden) CPM optimization value for the second run of\\nthe Leiden clustering (default: 0.4)"
    n_clusters: "(spectral clustering) Maximum number of clusters\\n(default: None)"
    recruit_small_contigs: "Salvage short contigs (<2048) (default: False)"
    fragment_length: "Length of contig fragments in bp. Default is half the\\nminimum contig length. (default: -1)"
    features: "[{coverage,composition} ...]\\nFeatures for binning (composition, coverage, or both)\\n(default: ['coverage', 'composition'])\\n"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_output = "${in_path_output_output}"
    Directory out_continue = "${in_continue}"
  }
}