version 1.0

task MetaseqCli {
  input {
    Boolean? from_string
    String? bins
    String? results_will_saved
    Boolean? plot
    String? processes
    String? fragment_size
    String action
    String data_file
    String type
    String windows
  }
  command <<<
    metaseq-cli \
      ~{action} \
      ~{data_file} \
      ~{type} \
      ~{windows} \
      ~{true="--fromstring" false="" from_string} \
      ~{if defined(bins) then ("--bins " +  '"' + bins + '"') else ""} \
      ~{if defined(results_will_saved) then ("--output " +  '"' + results_will_saved + '"') else ""} \
      ~{true="--plot" false="" plot} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(fragment_size) then ("--fragmentsize " +  '"' + fragment_size + '"') else ""}
  >>>
  parameter_meta {
    from_string: "Assume `windows` specifies a genomic coordinate of the form 'chrom:start-stop' or 'chrom:start-stop[strand]"
    bins: "Number of bins to divide each window into"
    results_will_saved: "Results will be saved to this file; default is to print to stdout."
    plot: "Create a simple plot of the results"
    processes: "Number of processes to use"
    fragment_size: "Each interval in `datafile` will be extended 3' to a total of `fragmentsize` bp. This can have a dramatic smoothing effect."
    action: "One of (avgdensity, array)"
    data_file: "Data file to use."
    type: "Type of data file. One of (bam, bed, bigwig, bigbed, gff, gtf, vcf)"
    windows: "Windows within which to get data from `datafile`. Can be a filename of intervals (bam, bed, gff, gtf, vcf), or, if `--fromstring` is specified, a coord of the form \"chrom:start-stop\", which only works for a single interval')"
  }
}