version 1.0

task RecognicerDf {
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
    String? step_size
    String? step_score
    String? cpu
    Boolean? significant_reads
    Boolean? verbose
    String? h
    String use
    String more
    String information
  }
  command <<<
    recognicer_df \
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
      ~{if defined(step_size) then ("--step_size " +  '"' + step_size + '"') else ""} \
      ~{if defined(step_score) then ("--step_score " +  '"' + step_score + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{true="--significant_reads" false="" significant_reads} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(h) then ("-h " +  '"' + h + '"') else ""}
  >>>
  parameter_meta {
    treatment_file: "Names of the sample file you wish to run RECOGNICER on. This can either be the relative or the absolute path of the file. Must be in BED or BAM format."
    control_file: "[CONTROL_FILE [CONTROL_FILE ...]], -c [CONTROL_FILE [CONTROL_FILE ...]] Name of the control library in BED or BAM format. This can either be the relative or the absolute path of the file. If you wish to run RECOGNICER without a control library, simply do not enter the file."
    species: "The species/genome used (ex: hg38)"
    redundancy_threshold: "The number of copies of indentical reads allowed in a library. Default value is 1"
    window_size: "Resolution of RECOGNICER. Default value is 200 (bp)"
    fragment_size: "The amount of shift from the beginning of a read to the center of the DNA fragment represented by the read. Default value is 150 (bp)."
    effective_genome_fraction: "Effective genome as fraction of the genome size. Default value is 0.74"
    false_discovery_rate: "Remove all islands with an false_discovery_rate below cutoff. Default value is 0.01."
    false_discovery_rate_df: "Cutoff for identification of significant changes been wild-type library and knockout library. Only provide a value when comparing two libraries."
    output_directory: "Path of the directory in which results will be stored. Default path is the current path"
    step_size: "Step Size: the number of windows in one graining unit. Used for RECOGNICER algorithm"
    step_score: "Step Score: The minimum number of positive elements in the graining unit to call the unit positive. Used for RECOGNICER algorithm"
    cpu: "CPU Core Count: The number of CPU cores RECOGNICER program will use when executing multi-processing tasks. Ideal core count is the species' number of chromosomes. Default value is the maximum number of cores avaiable in the system."
    significant_reads: "Output Significant Reads: Enter \"--significant_reads\" to have SICER produce a BED file of treatment reads filtered by significant islands and WIG file of filtered reads binned into windows"
    verbose: "increase console output verbosity"
    h: ""
    use: ""
    more: ""
    information: ""
  }
}