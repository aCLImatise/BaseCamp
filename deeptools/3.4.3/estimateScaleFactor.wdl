version 1.0

task EstimateScaleFactor {
  input {
    String? bam_files
    String? ignore_for_normalization
    String? sample_window_length
    String? number_of_samples
    String? normalization_length
    Boolean? skip_zeros
    Int? number_of_processors
    Boolean? verbose
    String of
    String bam
    File files
  }
  command <<<
    estimateScaleFactor \
      ~{of} \
      ~{bam} \
      ~{files} \
      ~{if defined(bam_files) then ("--bamfiles " +  '"' + bam_files + '"') else ""} \
      ~{if defined(ignore_for_normalization) then ("--ignoreForNormalization " +  '"' + ignore_for_normalization + '"') else ""} \
      ~{if defined(sample_window_length) then ("--sampleWindowLength " +  '"' + sample_window_length + '"') else ""} \
      ~{if defined(number_of_samples) then ("--numberOfSamples " +  '"' + number_of_samples + '"') else ""} \
      ~{if defined(normalization_length) then ("--normalizationLength " +  '"' + normalization_length + '"') else ""} \
      ~{true="--skipZeros" false="" skip_zeros} \
      ~{if defined(number_of_processors) then ("--numberOfProcessors " +  '"' + number_of_processors + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    bam_files: "of bam files [list of bam files ...], -b list of bam files [list of bam files ...] List of indexed BAM files, space delineated (default: None)"
    ignore_for_normalization: "A comma-separated list of chromosome names, limited by quotes, containing those chromosomes that should be excluded during normalization computations. For example, --ignoreForNormalization \"chrX, chrM\" (default: None)"
    sample_window_length: "Length in bases for a window used to sample the genome and compute the size or scaling factors (default: 1000)"
    number_of_samples: "Number of samplings taken from the genome to compute the scaling factors (default: 100000)"
    normalization_length: "By default, data is normalized to 1 fragment per 100 bases. The expected value is an integer. For example, if normalizationLength is 1000, then the resulting scaling factor will cause the average coverage of the BAM file to have on average 1 fragment per kilobase (default: 10)"
    skip_zeros: "If set, then zero counts that happen for *all* BAM files given are ignored. This will result in a reduced number of read counts than that specified in --numberOfSamples (default: False)"
    number_of_processors: "Number of processors to use. The default is to use half the maximum number of processors. (default: max/2)"
    verbose: "Set to see processing messages. (default: False)"
    of: ""
    bam: ""
    files: ""
  }
}