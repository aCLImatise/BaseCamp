version 1.0

task EstimateReadFiltering {
  input {
    File? bam_files
    String? outfile
    Array[String] sample_labels
    Boolean? smart_labels
    Int? binsize
    Int? distance_between_bins
    Int? number_of_processors
    Boolean? verbose
    String example
    String usage
  }
  command <<<
    estimateReadFiltering \
      ~{example} \
      ~{usage} \
      ~{if defined(bam_files) then ("--bamfiles " +  '"' + bam_files + '"') else ""} \
      ~{if defined(outfile) then ("--outFile " +  '"' + outfile + '"') else ""} \
      ~{if defined(sample_labels) then ("--sampleLabels " +  '"' + sample_labels + '"') else ""} \
      ~{true="--smartLabels" false="" smart_labels} \
      ~{if defined(binsize) then ("--binSize " +  '"' + binsize + '"') else ""} \
      ~{if defined(distance_between_bins) then ("--distanceBetweenBins " +  '"' + distance_between_bins + '"') else ""} \
      ~{if defined(number_of_processors) then ("--numberOfProcessors " +  '"' + number_of_processors + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    bam_files: "FILE2 [FILE1 FILE2 ...], -b FILE1 FILE2 [FILE1 FILE2 ...] List of indexed bam files separated by spaces."
    outfile: "The file to write results to. By default, results are printed to the console"
    sample_labels: "Labels for the samples. The default is to use the file name of the sample. The sample labels should be separated by spaces and quoted if a label itselfcontains a space E.g. --sampleLabels label-1 \"label 2\""
    smart_labels: "Instead of manually specifying labels for the input BAM files, this causes deepTools to use the file name after removing the path and extension."
    binsize: "Length in bases of the window used to sample the genome. (Default: 1000000)"
    distance_between_bins: "To reduce the computation time, not every possible genomic bin is sampled. This option allows you to set the distance between bins actually sampled from. Larger numbers are sufficient for high coverage samples, while smaller values are useful for lower coverage samples. Note that if you specify a value that results in too few (<1000) reads sampled, the value will be decreased. (Default: 10000)"
    number_of_processors: "Number of processors to use. Type \"max/2\" to use half the maximum number of processors or \"max\" to use all available processors. (Default: 1)"
    verbose: "Set to see processing messages."
    example: ""
    usage: ""
  }
}