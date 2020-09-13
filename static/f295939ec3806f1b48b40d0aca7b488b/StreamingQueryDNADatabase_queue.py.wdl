version 1.0

task StreamingQueryDNADatabaseQueuepy {
  input {
    Int? threads
    Int? containment_threshold
    Boolean? plot_file
    File? filter_file
    Int? location_of_thresh
    String script_calculates_indicies
    String in_file
    String reference_file
    String out_file
    String range_kmer_sizes
  }
  command <<<
    StreamingQueryDNADatabase_queue_py \
      ~{script_calculates_indicies} \
      ~{in_file} \
      ~{reference_file} \
      ~{out_file} \
      ~{range_kmer_sizes} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(containment_threshold) then ("--containment_threshold " +  '"' + containment_threshold + '"') else ""} \
      ~{if (plot_file) then "--plot_file" else ""} \
      ~{if defined(filter_file) then ("--filter_file " +  '"' + filter_file + '"') else ""} \
      ~{if defined(location_of_thresh) then ("--location_of_thresh " +  '"' + location_of_thresh + '"') else ""}
  >>>
  parameter_meta {
    threads: "Number of threads to use (default: 8)"
    containment_threshold: "Only return results with containment index above this\\nthreshold at the maximum k-mer size. (default: 0.1)"
    plot_file: "Optional flag to specify that a plot of the k-mer\\ncurves should also be saved (same basenameas the\\nout_file). (default: False)"
    filter_file: "Location of pre-filter bloom filter. Use only if you\\nabsolutely know what you're doing (hard to error check\\nbloom filters). (default: None)"
    location_of_thresh: "Location in range to apply the threshold passed by the\\n-c flag. -l 2 -c 5-50-10 means the threshold will be\\napplied at k-size 25. Default is largest size.\\n(default: -1)\\n"
    script_calculates_indicies: "This script calculates containment indicies for each of the training/reference"
    in_file: "Input file: FASTA/Q file to be processes"
    reference_file: "Training database/reference file (in HDF5 format).\\nCreated with MakeStreamingDNADatabase.py"
    out_file: "Output csv file with the containment indices."
    range_kmer_sizes: "Range of k-mer sizes in the formate\\n<start>-<end>-<increment>. So 5-10-2 means [5, 7, 9].\\nIf <end> is larger than the k-mer sizeof the training\\ndata, this will automatically be reduced."
  }
  output {
    File out_stdout = stdout()
  }
}