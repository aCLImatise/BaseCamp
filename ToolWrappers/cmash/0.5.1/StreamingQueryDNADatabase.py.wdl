version 1.0

task StreamingQueryDNADatabasepy {
  input {
    Int? threads
    Int? containment_threshold
    Boolean? plot_file
    Int? reads_per_core
    File? filter_file
    Int? location_of_thresh
    Boolean? sensitive
    Boolean? verbose
    String in_file
    String reference_file
    String out_file
    String range
  }
  command <<<
    StreamingQueryDNADatabase_py \
      ~{in_file} \
      ~{reference_file} \
      ~{out_file} \
      ~{range} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(containment_threshold) then ("--containment_threshold " +  '"' + containment_threshold + '"') else ""} \
      ~{if (plot_file) then "--plot_file" else ""} \
      ~{if defined(reads_per_core) then ("--reads_per_core " +  '"' + reads_per_core + '"') else ""} \
      ~{if defined(filter_file) then ("--filter_file " +  '"' + filter_file + '"') else ""} \
      ~{if defined(location_of_thresh) then ("--location_of_thresh " +  '"' + location_of_thresh + '"') else ""} \
      ~{if (sensitive) then "--sensitive" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    threads: "Number of threads to use (default: 8)"
    containment_threshold: "Only return results with containment index above this\\nthreshold at the maximum k-mer size. (default: 0.1)"
    plot_file: "Optional flag to specify that a plot of the k-mer\\ncurves should also be saved (same basenameas the\\nout_file). (default: False)"
    reads_per_core: "Number of reads per core in each chunk of\\nparallelization. Set as high as memory will allow (eg.\\n1M on 256GB, 48 core machine) (default: 100000)"
    filter_file: "Location of pre-filter bloom filter. Use only if you\\nabsolutely know what you're doing (hard to error check\\nbloom filters). (default: None)"
    location_of_thresh: "Location in range to apply the threshold passed by the\\n-c flag. -l 2 -c 5-50-10 means the threshold will be\\napplied at k-size 25. Default is largest size.\\n(default: -1)"
    sensitive: "Operate in sensitive mode. Marginally more true\\npositives with significantly more false positives. Use\\nwith caution. (default: False)"
    verbose: "Print out progress report/timing information (default:\\nFalse)\\n"
    in_file: "Input file: FASTA/Q file to be processes"
    reference_file: "Training database/reference file (in HDF5 format).\\nCreated with MakeStreamingDNADatabase.py"
    out_file: "Output csv file with the containment indices."
    range: "Range of k-mer sizes in the formate\\n<start>-<end>-<increment>. So 5-10-2 means [5, 7, 9].\\nIf <end> is larger than the k-mer sizeof the training\\ndata, this will automatically be reduced."
  }
  output {
    File out_stdout = stdout()
  }
}