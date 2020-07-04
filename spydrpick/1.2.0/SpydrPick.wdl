version 1.0

task SpydrPick {
  input {
    Boolean? _be_verbose
    String? mi_threshold
    String? mi_values
    String? mi_pseudo_count
    String? mi_threshold_iterations
    String? mi_threshold_pairs
    String? ld_threshold
    Boolean? no_ar_acne
    Boolean? arg_number_threads
    String? input_alignment_filenames
    String? include_list
    String? exclude_list
    String? mapping_list
    String? sample_list
    String? sample_weights
    String? input_indexing_base
    Boolean? no_filter_alignment
    String? maf_threshold
    String? gap_threshold
    Boolean? no_sample_reweighting
    String? sample_reweighting_threshold
    Boolean? rescale_sample_weights
    Boolean? output_state_frequencies
    Boolean? output_sample_weights
    Boolean? output_sample_distance_matrix
    String? output_indexing_base
    Boolean? output_alignment
    Boolean? output_filtered_alignment
    String? genome_size
    Boolean? linear_genome
    String? begin
    String? end
    Boolean? arg_aracneout_aracne
    String? ar_acne_edge_threshold
    String? ar_acne_block_size
    String? ar_acne_node_grouping_size
    String var_36
  }
  command <<<
    SpydrPick \
      ~{var_36} \
      ~{true="-v" false="" _be_verbose} \
      ~{if defined(mi_threshold) then ("--mi-threshold " +  '"' + mi_threshold + '"') else ""} \
      ~{if defined(mi_values) then ("--mi-values " +  '"' + mi_values + '"') else ""} \
      ~{if defined(mi_pseudo_count) then ("--mi-pseudocount " +  '"' + mi_pseudo_count + '"') else ""} \
      ~{if defined(mi_threshold_iterations) then ("--mi-threshold-iterations " +  '"' + mi_threshold_iterations + '"') else ""} \
      ~{if defined(mi_threshold_pairs) then ("--mi-threshold-pairs " +  '"' + mi_threshold_pairs + '"') else ""} \
      ~{if defined(ld_threshold) then ("--ld-threshold " +  '"' + ld_threshold + '"') else ""} \
      ~{true="--no-aracne" false="" no_ar_acne} \
      ~{true="-t" false="" arg_number_threads} \
      ~{if defined(input_alignment_filenames) then ("--alignmentfile " +  '"' + input_alignment_filenames + '"') else ""} \
      ~{if defined(include_list) then ("--include-list " +  '"' + include_list + '"') else ""} \
      ~{if defined(exclude_list) then ("--exclude-list " +  '"' + exclude_list + '"') else ""} \
      ~{if defined(mapping_list) then ("--mapping-list " +  '"' + mapping_list + '"') else ""} \
      ~{if defined(sample_list) then ("--sample-list " +  '"' + sample_list + '"') else ""} \
      ~{if defined(sample_weights) then ("--sample-weights " +  '"' + sample_weights + '"') else ""} \
      ~{if defined(input_indexing_base) then ("--input-indexing-base " +  '"' + input_indexing_base + '"') else ""} \
      ~{true="--no-filter-alignment" false="" no_filter_alignment} \
      ~{if defined(maf_threshold) then ("--maf-threshold " +  '"' + maf_threshold + '"') else ""} \
      ~{if defined(gap_threshold) then ("--gap-threshold " +  '"' + gap_threshold + '"') else ""} \
      ~{true="--no-sample-reweighting" false="" no_sample_reweighting} \
      ~{if defined(sample_reweighting_threshold) then ("--sample-reweighting-threshold " +  '"' + sample_reweighting_threshold + '"') else ""} \
      ~{true="--rescale-sample-weights" false="" rescale_sample_weights} \
      ~{true="--output-state-frequencies" false="" output_state_frequencies} \
      ~{true="--output-sample-weights" false="" output_sample_weights} \
      ~{true="--output-sample-distance-matrix" false="" output_sample_distance_matrix} \
      ~{if defined(output_indexing_base) then ("--output-indexing-base " +  '"' + output_indexing_base + '"') else ""} \
      ~{true="--output-alignment" false="" output_alignment} \
      ~{true="--output-filtered-alignment" false="" output_filtered_alignment} \
      ~{if defined(genome_size) then ("--genome-size " +  '"' + genome_size + '"') else ""} \
      ~{true="--linear-genome" false="" linear_genome} \
      ~{if defined(begin) then ("--begin " +  '"' + begin + '"') else ""} \
      ~{if defined(end) then ("--end " +  '"' + end + '"') else ""} \
      ~{true="-o" false="" arg_aracneout_aracne} \
      ~{if defined(ar_acne_edge_threshold) then ("--aracne-edge-threshold " +  '"' + ar_acne_edge_threshold + '"') else ""} \
      ~{if defined(ar_acne_block_size) then ("--aracne-block-size " +  '"' + ar_acne_block_size + '"') else ""} \
      ~{if defined(ar_acne_node_grouping_size) then ("--aracne-node-grouping-size " +  '"' + ar_acne_node_grouping_size + '"') else ""}
  >>>
  parameter_meta {
    _be_verbose: "[ --verbose ]                      Be verbose."
    mi_threshold: "(=-1)              The MI threshold value. Experience  suggests that a value of 0.11 is often  reasonable. Zero indicates no threshold and negative values will trigger  auto-define heuristics."
    mi_values: "(=0)                  Approximate number of MI values to  calculate from data (default=#samples*1 00)."
    mi_pseudo_count: "(=0.5)           The MI pseudocount value."
    mi_threshold_iterations: "(=10)   Number of iterations for estimating  saving threshold."
    mi_threshold_pairs: "(=0)         Number of sampled pairs for estimating  saving threshold (0=determine  automatically)."
    ld_threshold: "(=0)               Threshold distance for linkage  disequilibrium (LD)."
    no_ar_acne: "Skip ARACNE, only calculate MI."
    arg_number_threads: "[ --threads ] arg (=-1)            Number of threads per MPI/shared memory node (-1=use all hardware threads that  the OS/environment exposes)."
    input_alignment_filenames: "The input alignment filename(s). When  two filenames are specified, only  inter-alignment links will be probed  for."
    include_list: "Name of file containing list of loci to include in analysis."
    exclude_list: "Name of file containing list of loci to exclude from analysis."
    mapping_list: "Name of file containing loci mappings."
    sample_list: "The sample filter list input filename."
    sample_weights: "Name of file containing sample weights."
    input_indexing_base: "(=1)        Base index for input."
    no_filter_alignment: "Do not filter alignment columns by  applying MAF and GAP thresholds."
    maf_threshold: "(=0.01)           Minor state frequency threshold. Loci  with less than 2 states above threshold are removed from alignment."
    gap_threshold: "(=0.14999999999999999) Gap frequency threshold. Positions with a gap frequency above the threshold are excluded from the pair-analysis."
    no_sample_reweighting: "Turn sample reweighting off, i.e. do  not try to correct for population  structure."
    sample_reweighting_threshold: "(=0.90000000000000002) Fraction of identical positions  required for two samples to be  considered identical."
    rescale_sample_weights: "Rescale sample weights so that  n(effective) == n."
    output_state_frequencies: "Write column-wise state frequencies to  file."
    output_sample_weights: "Output sample weights."
    output_sample_distance_matrix: "Output triangular sample-sample Hamming distance matrix."
    output_indexing_base: "(=1)       Base index for output."
    output_alignment: "Write alignment to file."
    output_filtered_alignment: "Write filtered alignment to file."
    genome_size: "Genome size, if different from input.  Default = 0: detect size from input."
    linear_genome: "Assume linear genome in distance  calculations."
    begin: "(=1)                      The first locus index to work on. Used  to define a range."
    end: "(=-1)                       The last locus index to work on (-1=end of input). Used to define a range."
    arg_aracneout_aracne: "[ --aracne-outputfile ] arg (=aracne.out) The ARACNE output filename. This is a  binary file for \"plot.r\"."
    ar_acne_edge_threshold: "(=2.2204460492503131e-16) Equality tolerance threshold. Edges  differing by less than this value are  considered equal in strength."
    ar_acne_block_size: "(=16384)      Block size for graph processing."
    ar_acne_node_grouping_size: "(=16) Grouping size for node processing."
    var_36: ""
  }
}