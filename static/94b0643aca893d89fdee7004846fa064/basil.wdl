version 1.0

task Basil {
  input {
    Boolean? quiet
    Boolean? verbose
    Boolean? very_verbose
    String? input_reference
    String? input_mapping
    String? out_vcf
    File? output_debug_dir
    String? fragment_size_factor
    String? auto_library_num_records
    Int? fragment_size_median
    String? fragment_size_std_dev
    String? fragment_default_orientation
    String? filter_max_coverage
    String? filter_min_aln_quality
    String? out_variation_type
    String? out_individual_name
    String? clipping_window_radius
    String? max_alignment_length
    String? clipping_min_length
    String? clipping_min_coverage
    String? oea_cluster_selection
    String? oea_min_support
    String? oea_min_support_each_side
    String? realignment_num_threads
    String? breakpoint_window_radius
  }
  command <<<
    basil \
      ~{true="--quiet" false="" quiet} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--very-verbose" false="" very_verbose} \
      ~{if defined(input_reference) then ("--input-reference " +  '"' + input_reference + '"') else ""} \
      ~{if defined(input_mapping) then ("--input-mapping " +  '"' + input_mapping + '"') else ""} \
      ~{if defined(out_vcf) then ("--out-vcf " +  '"' + out_vcf + '"') else ""} \
      ~{if defined(output_debug_dir) then ("--output-debug-dir " +  '"' + output_debug_dir + '"') else ""} \
      ~{if defined(fragment_size_factor) then ("--fragment-size-factor " +  '"' + fragment_size_factor + '"') else ""} \
      ~{if defined(auto_library_num_records) then ("--auto-library-num-records " +  '"' + auto_library_num_records + '"') else ""} \
      ~{if defined(fragment_size_median) then ("--fragment-size-median " +  '"' + fragment_size_median + '"') else ""} \
      ~{if defined(fragment_size_std_dev) then ("--fragment-size-std-dev " +  '"' + fragment_size_std_dev + '"') else ""} \
      ~{if defined(fragment_default_orientation) then ("--fragment-default-orientation " +  '"' + fragment_default_orientation + '"') else ""} \
      ~{if defined(filter_max_coverage) then ("--filter-max-coverage " +  '"' + filter_max_coverage + '"') else ""} \
      ~{if defined(filter_min_aln_quality) then ("--filter-min-aln-quality " +  '"' + filter_min_aln_quality + '"') else ""} \
      ~{if defined(out_variation_type) then ("--out-variation-type " +  '"' + out_variation_type + '"') else ""} \
      ~{if defined(out_individual_name) then ("--out-individual-name " +  '"' + out_individual_name + '"') else ""} \
      ~{if defined(clipping_window_radius) then ("--clipping-window-radius " +  '"' + clipping_window_radius + '"') else ""} \
      ~{if defined(max_alignment_length) then ("--max-alignment-length " +  '"' + max_alignment_length + '"') else ""} \
      ~{if defined(clipping_min_length) then ("--clipping-min-length " +  '"' + clipping_min_length + '"') else ""} \
      ~{if defined(clipping_min_coverage) then ("--clipping-min-coverage " +  '"' + clipping_min_coverage + '"') else ""} \
      ~{if defined(oea_cluster_selection) then ("--oea-cluster-selection " +  '"' + oea_cluster_selection + '"') else ""} \
      ~{if defined(oea_min_support) then ("--oea-min-support " +  '"' + oea_min_support + '"') else ""} \
      ~{if defined(oea_min_support_each_side) then ("--oea-min-support-each-side " +  '"' + oea_min_support_each_side + '"') else ""} \
      ~{if defined(realignment_num_threads) then ("--realignment-num-threads " +  '"' + realignment_num_threads + '"') else ""} \
      ~{if defined(breakpoint_window_radius) then ("--breakpoint-window-radius " +  '"' + breakpoint_window_radius + '"') else ""}
  >>>
  parameter_meta {
    quiet: "Only print on errors."
    verbose: "Higher verbosity."
    very_verbose: "Highest verbosity."
    input_reference: "FASTA file with the reference. Required when using Valid filetypes are: fasta and fa."
    input_mapping: "SAM/BAM file to use as the input. Valid filetypes are: sam and bam."
    out_vcf: "VCF file to write variations to. Use \"-\" for stdout. Valid filetype is: vcf. Default: -."
    output_debug_dir: "Directory for debug output files. Created if required."
    fragment_size_factor: "Factor to multiple fragment size stddev with to get allowed error. In range [0..inf]. Default: 8."
    auto_library_num_records: "Number of records to use for automatic library evaluation. Set to 0 to evaluate all. In range [0..inf]. Default: 100000."
    fragment_size_median: "Median fragment size. In range [0..inf]. Default: 250."
    fragment_size_std_dev: "Fragment size standard deviation. In range [0..inf]. Default: 3."
    fragment_default_orientation: "Default orientation. One of F+, F-, R+, and R-. Default: R+."
    filter_max_coverage: "Filter out calls at locations that have a higher coverage than this number. Set to 0 to disable filter. In range [0..inf]. Default: 200."
    filter_min_aln_quality: "Ignore alignments with a quality below this value. In range [0..inf]. Default: 0."
    out_variation_type: "The types of variants to write out. One of insertion. Default: insertion."
    out_individual_name: "The name of the individual in the output. Default: individual."
    clipping_window_radius: "Window radius to use for clipping position clustering. In range [0..inf]. Default: 20."
    max_alignment_length: "Maximal alignment length. In range [0..inf]. Default: 2000."
    clipping_min_length: "Smallest number of characters that have to be soft-clipped such that the alignment is not ignored. Default: 15."
    clipping_min_coverage: "The number of clipping positions to find in one window such that the window is not discarded. Default: 5."
    oea_cluster_selection: "Algorithm for OEA cluster selection. One of chaining and set_cover. Default: chaining."
    oea_min_support: "Smallest number of EOA reads to support an insertion. In range [1..inf]. Default: 4."
    oea_min_support_each_side: "Smallest number of EOA reads on each side to support an insertion. In range [1..inf]. Default: 2."
    realignment_num_threads: "Number of threads to use for the realignment. In range [1..inf]. Default: 1."
    breakpoint_window_radius: "Radius around breakpoints to extract for remapping. Set to 0 to use maximal fragment size. In range [0..inf]. Default: 0."
  }
}