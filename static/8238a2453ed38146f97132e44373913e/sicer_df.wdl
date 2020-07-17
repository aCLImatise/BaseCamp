version 1.0

task SicerDf {
  input {
    Array[String] treatment_file
    Boolean? control_file
    String? species
    String? redundancy_threshold
    String? window_size
    String? fragment_size
    String? effective_genome_fraction
    String? false_discovery_rate
    String? false_discovery_rate_df
    String? output_directory
    String? gap_size
    String? e_value
    String? cpu
    Boolean? significant_reads
    Boolean? verbose
    String? h
    String use
    String more
    String information
  }
  command <<<
    sicer_df \
      ~{use} \
      ~{more} \
      ~{information} \
      ~{if defined(treatment_file) then ("--treatment_file " +  '"' + treatment_file + '"') else ""} \
      ~{true="--control_file" false="" control_file} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(redundancy_threshold) then ("--redundancy_threshold " +  '"' + redundancy_threshold + '"') else ""} \
      ~{if defined(window_size) then ("--window_size " +  '"' + window_size + '"') else ""} \
      ~{if defined(fragment_size) then ("--fragment_size " +  '"' + fragment_size + '"') else ""} \
      ~{if defined(effective_genome_fraction) then ("--effective_genome_fraction " +  '"' + effective_genome_fraction + '"') else ""} \
      ~{if defined(false_discovery_rate) then ("--false_discovery_rate " +  '"' + false_discovery_rate + '"') else ""} \
      ~{if defined(false_discovery_rate_df) then ("--false_discovery_rate_df " +  '"' + false_discovery_rate_df + '"') else ""} \
      ~{if defined(output_directory) then ("--output_directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(gap_size) then ("--gap_size " +  '"' + gap_size + '"') else ""} \
      ~{if defined(e_value) then ("--e_value " +  '"' + e_value + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{true="--significant_reads" false="" significant_reads} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(h) then ("-h " +  '"' + h + '"') else ""}
  >>>
  parameter_meta {
    treatment_file: "Name of the sample file you wish to run SICER on. This can either be the relative or the absolute path of the file. Must be in BED or BAM format."
    control_file: "[CONTROL_FILE [CONTROL_FILE ...]], -c [CONTROL_FILE [CONTROL_FILE ...]] Name of the control library in BED or BAM format. This can either be the relative or the absolute path of the file. If you wish to run SICER without a control library, simply do not enter the file."
    species: "The species/genome used (ex: hg38)"
    redundancy_threshold: "The number of copies of indentical reads allowed in a library. Default value is 1"
    window_size: "Resolution of SICER. Default value is 200 (bp)"
    fragment_size: "The amount of shift from the beginning of a read to the center of the DNA fragment represented by the read. Default value is 150 (bp)."
    effective_genome_fraction: "Effective genome as fraction of the genome size. Default value is 0.74"
    false_discovery_rate: "Remove all islands with an false_discovery_rate below cutoff. Default value is 0.01."
    false_discovery_rate_df: "Cutoff for identification of significant changes been wild-type library and knockout library. Only provide a value when comparing two libraries."
    output_directory: "Path of the directory in which results will be stored. Default path is the current path"
    gap_size: "The minimum length of a \"gap\" such that neighboring window is an \"island.\" This value must be a multiple of the window size. Default value is 600 (bp)"
    e_value: "E-value. Requires user input when no control library is provided. Default value is 1000"
    cpu: "CPU Core Count: The number of CPU cores SICER program will use when executing multi-processing tasks. Optimal core count is the species' number of chromosomes. Default value is the maximum number of cores avaiable in the system."
    significant_reads: "Output Significant Reads: Enter \"--significant_reads\" to have SICER produce a BED file of treatment reads filtered by significant islands and WIG file of filtered reads binned into windows"
    verbose: "increase console output verbosity"
    h: ""
    use: ""
    more: ""
    information: ""
  }
}