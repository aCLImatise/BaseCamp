version 1.0

task JAMMsh {
  input {
    Boolean? directory_containing_sample_files
    Boolean? genome_size_file
    Directory? output_directory_required
    Boolean? directory_containing_input_files
    Boolean? fragment_lengths_estimated
    Boolean? resolution_peak_region
    Boolean? mode_normal_narrow
    Boolean? clustering_selection_default
    Boolean? bin_size_default
    Boolean? minimum_window_size
    Boolean? window_enrichment_cutoff
    Boolean? keep_pcr_dupicates
    Boolean? type_single_paired
    Boolean? number_processors_used
    Boolean? directory_where_created
  }
  command <<<
    JAMM_sh \
      ~{if (directory_containing_sample_files) then "-s" else ""} \
      ~{if (genome_size_file) then "-g" else ""} \
      ~{if (output_directory_required) then "-o" else ""} \
      ~{if (directory_containing_input_files) then "-c" else ""} \
      ~{if (fragment_lengths_estimated) then "-f" else ""} \
      ~{if (resolution_peak_region) then "-r" else ""} \
      ~{if (mode_normal_narrow) then "-m" else ""} \
      ~{if (clustering_selection_default) then "-i" else ""} \
      ~{if (bin_size_default) then "-b" else ""} \
      ~{if (minimum_window_size) then "-w" else ""} \
      ~{if (window_enrichment_cutoff) then "-e" else ""} \
      ~{if (keep_pcr_dupicates) then "-d" else ""} \
      ~{if (type_single_paired) then "-t" else ""} \
      ~{if (number_processors_used) then "-p" else ""} \
      ~{if (directory_where_created) then "-T" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    directory_containing_sample_files: "directory containing Sample files (required)"
    genome_size_file: "Genome size file (required)"
    output_directory_required: "Output directory (required)"
    directory_containing_input_files: "directory containing input or Control files"
    fragment_lengths_estimated: "Fragment length(s) (default: estimated)"
    resolution_peak_region: "Resolution, peak or region or window (default: peak)"
    mode_normal_narrow: "Mode, normal or narrow (default: normal)"
    clustering_selection_default: "clustering Initialization window selection, deterministic or stochastic (default: deterministic)"
    bin_size_default: "Bin Size (default: estimated)"
    minimum_window_size: "minimum Window size (default: 2 --- Note: this means minimum_window_size = bin_size x the_value_of_-w)"
    window_enrichment_cutoff: "window Enrichment cutoff, auto or any numeric value (default: 1 --- Set this to \\\"auto\\\" to estimate the window enrichment cutoff)"
    keep_pcr_dupicates: "keep PCR Dupicates in single-end mode, y or n (default: n --- if -t is \\\"paired\\\", this option has no effect)"
    type_single_paired: "Type, single or paired (default: single, requires BED files. paired requires BEDPE files)"
    number_processors_used: "Number of processors used by R scripts (default: 1)"
    directory_where_created: "Directory where the temporary working repository will be created. This directory will be deleted after JAMM is done (default: a new directory is created in /tmp folder)."
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_required = "${in_output_directory_required}"
  }
}