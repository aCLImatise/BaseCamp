version 1.0

task Decompose {
  input {
    Float? min_entropy
    Boolean? skip_m_normalization
    Int? number_of_discriminants
    Int? min_actual_abundance
    Int? min_substantive_abundance
    Int? maximum_variation_allowed
    String? sample_name_separator
    String? output_directory
    String? project
    Boolean? generate_frequency_curves
    Boolean? skip_removing_outliers
    Boolean? merge_homopolymer_splits
    Boolean? relocate_outliers
    Boolean? store_topology_dict
    Boolean? keep_tmp
    Boolean? no_threading
    Int? number_of_threads
    File? sample_mapping
    Boolean? skip_gen_html
    Boolean? skip_gen_figures
    Boolean? skip_check_input_file
    Boolean? skip_gex_f_files
    Boolean? quick
    File file_path
  }
  command <<<
    decompose \
      ~{file_path} \
      ~{if defined(min_entropy) then ("--min-entropy " +  '"' + min_entropy + '"') else ""} \
      ~{true="--skip-m-normalization" false="" skip_m_normalization} \
      ~{if defined(number_of_discriminants) then ("--number-of-discriminants " +  '"' + number_of_discriminants + '"') else ""} \
      ~{if defined(min_actual_abundance) then ("--min-actual-abundance " +  '"' + min_actual_abundance + '"') else ""} \
      ~{if defined(min_substantive_abundance) then ("--min-substantive-abundance " +  '"' + min_substantive_abundance + '"') else ""} \
      ~{if defined(maximum_variation_allowed) then ("--maximum-variation-allowed " +  '"' + maximum_variation_allowed + '"') else ""} \
      ~{if defined(sample_name_separator) then ("--sample-name-separator " +  '"' + sample_name_separator + '"') else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(project) then ("--project " +  '"' + project + '"') else ""} \
      ~{true="--generate-frequency-curves" false="" generate_frequency_curves} \
      ~{true="--skip-removing-outliers" false="" skip_removing_outliers} \
      ~{true="--merge-homopolymer-splits" false="" merge_homopolymer_splits} \
      ~{true="--relocate-outliers" false="" relocate_outliers} \
      ~{true="--store-topology-dict" false="" store_topology_dict} \
      ~{true="--keep-tmp" false="" keep_tmp} \
      ~{true="--no-threading" false="" no_threading} \
      ~{if defined(number_of_threads) then ("--number-of-threads " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(sample_mapping) then ("--sample-mapping " +  '"' + sample_mapping + '"') else ""} \
      ~{true="--skip-gen-html" false="" skip_gen_html} \
      ~{true="--skip-gen-figures" false="" skip_gen_figures} \
      ~{true="--skip-check-input-file" false="" skip_check_input_file} \
      ~{true="--skip-gexf-files" false="" skip_gex_f_files} \
      ~{true="--quick" false="" quick}
  >>>
  parameter_meta {
    min_entropy: "Minimum entropy for a component to have in order to be picked as a discriminant. Defeault: 0.096500"
    skip_m_normalization: "Skip the m normalization heuristics. Normalization heuristics normalize --min-entropy parameter per node before decomposition depending on the node size, and the most abundant sequence in the dataset. Please see the documentation for more comprehensive description and best practices. Default: False"
    number_of_discriminants: "Number of discriminant locations to be used for entropy decomposition discriminant. Defeault: 4"
    min_actual_abundance: "Minimum number of reads in a node for decomposition to continue. Decomposition will continue for any node that has more reads than this number as far as they present an entropy that is larger than --min-entropy. This number should be chosen carefully depending on the size of the sample. Althought this parameter is available to you for historical reasons, For noise filtering, you are encouraged to use --min- substantive-abundance parameter instead."
    min_substantive_abundance: "Unlike \"actual\" abundance, \"substantive\" abundance is interested in the abundance of the most abundant read in a node. If the abundance of the most abundant unique sequence in a node is smaller than the number given with this parameter the node will be eliminated and not included in downstream analyses. This is the most appropriate, and most cases, the only noise filtering parameter. If the user does not set a value for minimum substantive abudnance, MED algorithm will set one by default by dividing the number of reads in the input dataset by 5,000."
    maximum_variation_allowed: "This parameter is being used to remove \"outliers\" from nodes. The similarity of a read in a node is less than --maximum-variation-allowed than the representative sequence of the node, it is identified as an outlier. If not set, this value is being computed depending on the average read length."
    sample_name_separator: "Character that separates sample name from unique info in the defline. For insatnce if the defline says >sample-1_GD7BRW402IVMZE, the separator should be set to \"_\" (which is the default character)."
    output_directory: "Output directory"
    project: "When a project name is set, given name will be used in figures whenever possible."
    generate_frequency_curves: "When set, figure with frequency curve for unique reads and entropy distribution will be generated for each node. Depending on the number of nodes, this might be a time consuming step."
    skip_removing_outliers: "When set, outliers will not be removed from nodes."
    merge_homopolymer_splits: "When set, nodes that differ from each other by only one nucleotide that happens to be observed as an insertion at the upstream or downstream of a homopolymer region will be merged."
    relocate_outliers: "Outliers are identified in two places: (1) during the raw topology computation and (2) during the refinement step where distant reads are removed from nodes. This parameter, when set, makes the pipeline go through each read identified as an outlier and try to find the best nodes for them. Please read the documentation for details. This step might take a long time. Default: False"
    store_topology_dict: "When set, topology dict with read ids will be generated. This may take a very large disk space and computation time for large data sets"
    keep_tmp: "When set, directory with temporary BLAST results will not be deleted at the end of the run. It may be necessary to debug the results"
    no_threading: "When set, decomposer does not spawn multiple threads. Default behavior is multi-threaded."
    number_of_threads: "Number of threads to use. It is a good idea to keep this number smaller than the number of CPU cores available. If not set, this number will be set to 90% of available cores, or (available cores - 1) if 10% of the cores is a number smaller than 1"
    sample_mapping: "TAB delimited categorical mapping of samples to be used for post-analysis visualizations. Refer to the tutorial for the file format"
    skip_gen_html: "When set, decomposer will generate a static HTML output to browse analysis results"
    skip_gen_figures: "When set, decomposer will not attempt to generate figures post analysis"
    skip_check_input_file: "When set, input FASTA will not be checked for potential errors"
    skip_gex_f_files: "When set, GEXF files for network and topology will not be generated"
    quick: "When set, the pipeline will do only the essential steps, skipping anything auxiliary, even if other parameters require otherwise. Please do not use it other than benchmarking or testing purposes"
    file_path: "Alignment file that contains all samples and sequences in FASTA format"
  }
}