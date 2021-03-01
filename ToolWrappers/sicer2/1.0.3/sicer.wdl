version 1.0

task Sicer {
  input {
    File? treatment_file
    File? control_file
    Int? species
    Int? redundancy_threshold
    Int? window_size
    Int? fragment_size
    Int? effective_genome_fraction
    Float? false_discovery_rate
    Directory? output_directory
    Int? gap_size
    Int? e_value
    Int? cpu
    File? significant_reads
    Boolean? verbose
    String? h
    String use
    String more
    String information
  }
  command <<<
    sicer \
      ~{use} \
      ~{more} \
      ~{information} \
      ~{if defined(treatment_file) then ("--treatment_file " +  '"' + treatment_file + '"') else ""} \
      ~{if defined(control_file) then ("--control_file " +  '"' + control_file + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(redundancy_threshold) then ("--redundancy_threshold " +  '"' + redundancy_threshold + '"') else ""} \
      ~{if defined(window_size) then ("--window_size " +  '"' + window_size + '"') else ""} \
      ~{if defined(fragment_size) then ("--fragment_size " +  '"' + fragment_size + '"') else ""} \
      ~{if defined(effective_genome_fraction) then ("--effective_genome_fraction " +  '"' + effective_genome_fraction + '"') else ""} \
      ~{if defined(false_discovery_rate) then ("--false_discovery_rate " +  '"' + false_discovery_rate + '"') else ""} \
      ~{if defined(output_directory) then ("--output_directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(gap_size) then ("--gap_size " +  '"' + gap_size + '"') else ""} \
      ~{if defined(e_value) then ("--e_value " +  '"' + e_value + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if (significant_reads) then "--significant_reads" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(h) then ("-h " +  '"' + h + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sicer2:1.0.3--py38hd504320_0"
  }
  parameter_meta {
    treatment_file: "Name of the sample file you wish to run SICER on. This\\ncan either be the relative or the absolute path of the\\nfile. Must be in BED or BAM format."
    control_file: "Name of the control library in BED or BAM format. This\\ncan either be the relative or the absolute path of the\\nfile. If you wish to run SICER without a control\\nlibrary, simply do not enter the file."
    species: "The species/genome used (ex: hg38)"
    redundancy_threshold: "The number of copies of indentical reads allowed in a\\nlibrary. Default value is 1"
    window_size: "Resolution of SICER. Default value is 200 (bp)"
    fragment_size: "The amount of shift from the beginning of a read to\\nthe center of the DNA fragment represented by the\\nread. Default value is 150 (bp)."
    effective_genome_fraction: "Effective genome as fraction of the genome size.\\nDefault value is 0.74"
    false_discovery_rate: "Remove all islands with an false_discovery_rate below\\ncutoff. Default value is 0.01."
    output_directory: "Path of the directory in which results will be stored.\\nDefault path is the current path"
    gap_size: "The minimum length of a \\\"gap\\\" such that neighboring\\nwindow is an \\\"island.\\\" This value must be a multiple\\nof the window size. Default value is 600 (bp)"
    e_value: "E-value. Requires user input when no control library\\nis provided. Default value is 1000"
    cpu: "CPU Core Count: The number of CPU cores SICER program\\nwill use when executing multi-processing tasks.\\nOptimal core count is the species' number of\\nchromosomes. Default value is the maximum number of\\ncores avaiable in the system."
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