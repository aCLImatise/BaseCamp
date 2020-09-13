version 1.0

task RecognicerDf {
  input {
    Array[File] treatment_file
    Boolean? control_file
    Int? species
    Int? redundancy_threshold
    Int? window_size
    Int? fragment_size
    Int? effective_genome_fraction
    Float? false_discovery_rate
    String? false_discovery_rate_df
    Directory? output_directory
    Int? step_size
    Int? step_score
    Int? cpu
    File? significant_reads
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
      ~{if (control_file) then "--control_file" else ""} \
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
      ~{if (significant_reads) then "--significant_reads" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(h) then ("-h " +  '"' + h + '"') else ""}
  >>>
  parameter_meta {
    treatment_file: "Names of the sample file you wish to run RECOGNICER\\non. This can either be the relative or the absolute\\npath of the file. Must be in BED or BAM format."
    control_file: "[CONTROL_FILE [CONTROL_FILE ...]], -c [CONTROL_FILE [CONTROL_FILE ...]]\\nName of the control library in BED or BAM format. This\\ncan either be the relative or the absolute path of the\\nfile. If you wish to run RECOGNICER without a control\\nlibrary, simply do not enter the file."
    species: "The species/genome used (ex: hg38)"
    redundancy_threshold: "The number of copies of indentical reads allowed in a\\nlibrary. Default value is 1"
    window_size: "Resolution of RECOGNICER. Default value is 200 (bp)"
    fragment_size: "The amount of shift from the beginning of a read to\\nthe center of the DNA fragment represented by the\\nread. Default value is 150 (bp)."
    effective_genome_fraction: "Effective genome as fraction of the genome size.\\nDefault value is 0.74"
    false_discovery_rate: "Remove all islands with an false_discovery_rate below\\ncutoff. Default value is 0.01."
    false_discovery_rate_df: "Cutoff for identification of significant changes been\\nwild-type library and knockout library. Only provide a\\nvalue when comparing two libraries."
    output_directory: "Path of the directory in which results will be stored.\\nDefault path is the current path"
    step_size: "Step Size: the number of windows in one graining unit.\\nUsed for RECOGNICER algorithm"
    step_score: "Step Score: The minimum number of positive elements in\\nthe graining unit to call the unit positive. Used for\\nRECOGNICER algorithm"
    cpu: "CPU Core Count: The number of CPU cores RECOGNICER\\nprogram will use when executing multi-processing\\ntasks. Ideal core count is the species' number of\\nchromosomes. Default value is the maximum number of\\ncores avaiable in the system."
    significant_reads: "Output Significant Reads: Enter \\\"--significant_reads\\\"\\nto have SICER produce a BED file of treatment reads\\nfiltered by significant islands and WIG file of\\nfiltered reads binned into windows"
    verbose: "increase console output verbosity"
    h: ""
    use: ""
    more: ""
    information: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
    File out_significant_reads = "${in_significant_reads}"
  }
}