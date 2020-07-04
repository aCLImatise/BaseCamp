version 1.0

task JAMM.sh {
  input {
    Boolean? directory_containing_sample_files
    Boolean? genome_size_file
    Boolean? output_directory_required
    Boolean? directory_containing_input_files
    Boolean? fragment_lengths_default
    Boolean? resolution_peak_region
    Boolean? mode_normal_narrow
    Boolean? clustering_default_deterministic
    Boolean? bin_size_default
    Boolean? minimum_window_size
    Boolean? window_enrichment_cutoff
    Boolean? keep_pcr_dupicates
    Boolean? type_single_paired
    Boolean? number_processors_used
    Boolean? directory_where_created
  }
  command <<<
    JAMM.sh \
      ~{true="-s" false="" directory_containing_sample_files} \
      ~{true="-g" false="" genome_size_file} \
      ~{true="-o" false="" output_directory_required} \
      ~{true="-c" false="" directory_containing_input_files} \
      ~{true="-f" false="" fragment_lengths_default} \
      ~{true="-r" false="" resolution_peak_region} \
      ~{true="-m" false="" mode_normal_narrow} \
      ~{true="-i" false="" clustering_default_deterministic} \
      ~{true="-b" false="" bin_size_default} \
      ~{true="-w" false="" minimum_window_size} \
      ~{true="-e" false="" window_enrichment_cutoff} \
      ~{true="-d" false="" keep_pcr_dupicates} \
      ~{true="-t" false="" type_single_paired} \
      ~{true="-p" false="" number_processors_used} \
      ~{true="-T" false="" directory_where_created}
  >>>
  parameter_meta {
    directory_containing_sample_files: "directory containing Sample files (required)"
    genome_size_file: "Genome size file (required)"
    output_directory_required: "Output directory (required)"
    directory_containing_input_files: "directory containing input or Control files"
    fragment_lengths_default: "Fragment length(s) (default: estimated)"
    resolution_peak_region: "Resolution, peak or region or window (default: peak)"
    mode_normal_narrow: "Mode, normal or narrow (default: normal)"
    clustering_default_deterministic: "clustering Initialization window selection, deterministic or stochastic (default: deterministic)"
    bin_size_default: "Bin Size (default: estimated)"
    minimum_window_size: "minimum Window size (default: 2 --- Note: this means minimum_window_size = bin_size x the_value_of_-w)"
    window_enrichment_cutoff: "window Enrichment cutoff, auto or any numeric value (default: 1 --- Set this to \"auto\" to estimate the window enrichment cutoff)"
    keep_pcr_dupicates: "keep PCR Dupicates in single-end mode, y or n (default: n --- if -t is \"paired\", this option has no effect) "
    type_single_paired: "Type, single or paired (default: single, requires BED files. paired requires BEDPE files)"
    number_processors_used: "Number of processors used by R scripts (default: 1)"
    directory_where_created: "Directory where the temporary working repository will be created. This directory will be deleted after JAMM is done (default: a new directory is created in /tmp folder)."
  }
}