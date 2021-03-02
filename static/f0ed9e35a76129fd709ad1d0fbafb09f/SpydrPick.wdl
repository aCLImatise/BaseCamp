version 1.0

task SpydrPick {
  input {
    Boolean? _be_verbose
    Float? mi_threshold
    Int? mi_values
    Float? mi_pseudo_count
    Int? mi_threshold_iterations
    Int? mi_threshold_pairs
    Int? ld_threshold
    Boolean? no_ar_acne
    Boolean? arg_number_threads
    File? alignment_file
    File? include_list
    File? exclude_list
    File? mapping_list
    File? sample_list
    File? sample_weights
    Int? input_indexing_base
    Boolean? no_filter_alignment
    Float? maf_threshold
    Float? gap_threshold
    Boolean? no_sample_reweighting
    Float? sample_reweighting_threshold
    Boolean? rescale_sample_weights
    Boolean? output_state_frequencies
    Boolean? output_sample_distance_matrix
    Int? output_indexing_base
    Boolean? output_alignment
    Boolean? output_filtered_alignment
    Int? genome_size
    Boolean? linear_genome
    Int? end
    File? arg_aracneoutthe_aracne
    Float? ar_acne_edge_threshold
    Int? ar_acne_block_size
    Int? ar_acne_node_grouping_size
    File file_dot
    String calculations_dot
  }
  command <<<
    SpydrPick \
      ~{file_dot} \
      ~{calculations_dot} \
      ~{if (_be_verbose) then "-v" else ""} \
      ~{if defined(mi_threshold) then ("--mi-threshold " +  '"' + mi_threshold + '"') else ""} \
      ~{if defined(mi_values) then ("--mi-values " +  '"' + mi_values + '"') else ""} \
      ~{if defined(mi_pseudo_count) then ("--mi-pseudocount " +  '"' + mi_pseudo_count + '"') else ""} \
      ~{if defined(mi_threshold_iterations) then ("--mi-threshold-iterations " +  '"' + mi_threshold_iterations + '"') else ""} \
      ~{if defined(mi_threshold_pairs) then ("--mi-threshold-pairs " +  '"' + mi_threshold_pairs + '"') else ""} \
      ~{if defined(ld_threshold) then ("--ld-threshold " +  '"' + ld_threshold + '"') else ""} \
      ~{if (no_ar_acne) then "--no-aracne" else ""} \
      ~{if (arg_number_threads) then "-t" else ""} \
      ~{if defined(alignment_file) then ("--alignmentfile " +  '"' + alignment_file + '"') else ""} \
      ~{if defined(include_list) then ("--include-list " +  '"' + include_list + '"') else ""} \
      ~{if defined(exclude_list) then ("--exclude-list " +  '"' + exclude_list + '"') else ""} \
      ~{if defined(mapping_list) then ("--mapping-list " +  '"' + mapping_list + '"') else ""} \
      ~{if defined(sample_list) then ("--sample-list " +  '"' + sample_list + '"') else ""} \
      ~{if defined(sample_weights) then ("--sample-weights " +  '"' + sample_weights + '"') else ""} \
      ~{if defined(input_indexing_base) then ("--input-indexing-base " +  '"' + input_indexing_base + '"') else ""} \
      ~{if (no_filter_alignment) then "--no-filter-alignment" else ""} \
      ~{if defined(maf_threshold) then ("--maf-threshold " +  '"' + maf_threshold + '"') else ""} \
      ~{if defined(gap_threshold) then ("--gap-threshold " +  '"' + gap_threshold + '"') else ""} \
      ~{if (no_sample_reweighting) then "--no-sample-reweighting" else ""} \
      ~{if defined(sample_reweighting_threshold) then ("--sample-reweighting-threshold " +  '"' + sample_reweighting_threshold + '"') else ""} \
      ~{if (rescale_sample_weights) then "--rescale-sample-weights" else ""} \
      ~{if (output_state_frequencies) then "--output-state-frequencies" else ""} \
      ~{if (output_sample_distance_matrix) then "--output-sample-distance-matrix" else ""} \
      ~{if defined(output_indexing_base) then ("--output-indexing-base " +  '"' + output_indexing_base + '"') else ""} \
      ~{if (output_alignment) then "--output-alignment" else ""} \
      ~{if (output_filtered_alignment) then "--output-filtered-alignment" else ""} \
      ~{if defined(genome_size) then ("--genome-size " +  '"' + genome_size + '"') else ""} \
      ~{if (linear_genome) then "--linear-genome" else ""} \
      ~{if defined(end) then ("--end " +  '"' + end + '"') else ""} \
      ~{if (arg_aracneoutthe_aracne) then "-o" else ""} \
      ~{if defined(ar_acne_edge_threshold) then ("--aracne-edge-threshold " +  '"' + ar_acne_edge_threshold + '"') else ""} \
      ~{if defined(ar_acne_block_size) then ("--aracne-block-size " +  '"' + ar_acne_block_size + '"') else ""} \
      ~{if defined(ar_acne_node_grouping_size) then ("--aracne-node-grouping-size " +  '"' + ar_acne_node_grouping_size + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    _be_verbose: "[ --verbose ]                      Be verbose."
    mi_threshold: "(=-1)              The MI threshold value. Experience\\nsuggests that a value of 0.11 is often\\nreasonable. Zero indicates no threshold\\nand negative values will trigger\\nauto-define heuristics."
    mi_values: "(=0)                  Approximate number of MI values to\\ncalculate from data (default=#samples*1\\n00)."
    mi_pseudo_count: "(=0.5)           The MI pseudocount value."
    mi_threshold_iterations: "(=10)   Number of iterations for estimating\\nsaving threshold."
    mi_threshold_pairs: "(=0)         Number of sampled pairs for estimating\\nsaving threshold (0=determine\\nautomatically)."
    ld_threshold: "(=0)               Threshold distance for linkage\\ndisequilibrium (LD)."
    no_ar_acne: "Skip ARACNE, only calculate MI."
    arg_number_threads: "[ --threads ] arg (=-1)            Number of threads per MPI/shared memory\\nnode (-1=use all hardware threads that\\nthe OS/environment exposes)."
    alignment_file: "The input alignment filename(s). When\\ntwo filenames are specified, only\\ninter-alignment links will be probed\\nfor."
    include_list: "Name of file containing list of loci to\\ninclude in analysis."
    exclude_list: "Name of file containing list of loci to\\nexclude from analysis."
    mapping_list: "Name of file containing loci mappings."
    sample_list: "The sample filter list input filename."
    sample_weights: "Name of file containing sample weights."
    input_indexing_base: "(=1)        Base index for input."
    no_filter_alignment: "Do not filter alignment columns by\\napplying MAF and GAP thresholds."
    maf_threshold: "(=0.01)           Minor state frequency threshold. Loci\\nwith less than 2 states above threshold\\nare removed from alignment."
    gap_threshold: "(=0.14999999999999999)\\nGap frequency threshold. Positions with\\na gap frequency above the threshold are\\nexcluded from the pair-analysis."
    no_sample_reweighting: "Turn sample reweighting off, i.e. do\\nnot try to correct for population\\nstructure."
    sample_reweighting_threshold: "(=0.90000000000000002)\\nFraction of identical positions\\nrequired for two samples to be\\nconsidered identical."
    rescale_sample_weights: "Rescale sample weights so that\\nn(effective) == n."
    output_state_frequencies: "Write column-wise state frequencies to"
    output_sample_distance_matrix: "Output triangular sample-sample Hamming\\ndistance matrix."
    output_indexing_base: "(=1)       Base index for output."
    output_alignment: "Write alignment to file."
    output_filtered_alignment: "Write filtered alignment to file."
    genome_size: "Genome size, if different from input.\\nDefault = 0: detect size from input."
    linear_genome: "Assume linear genome in distance"
    end: "(=-1)                       The last locus index to work on (-1=end\\nof input). Used to define a range."
    arg_aracneoutthe_aracne: "[ --aracne-outputfile ] arg (=aracne.out)\\nThe ARACNE output filename. This is a\\nbinary file for \\\"plot.r\\\"."
    ar_acne_edge_threshold: "(=2.2204460492503131e-16)\\nEquality tolerance threshold. Edges\\ndiffering by less than this value are\\nconsidered equal in strength."
    ar_acne_block_size: "(=16384)      Block size for graph processing."
    ar_acne_node_grouping_size: "(=16) Grouping size for node processing."
    file_dot: "--output-sample-weights               Output sample weights."
    calculations_dot: "--begin arg (=1)                      The first locus index to work on. Used "
  }
  output {
    File out_stdout = stdout()
    File out_arg_aracneoutthe_aracne = "${in_arg_aracneoutthe_aracne}"
  }
}