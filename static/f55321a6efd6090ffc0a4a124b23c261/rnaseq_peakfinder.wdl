version 1.0

task RnaseqPeakfinder.pl {
  input {
    Boolean? bgp_os
    Boolean? bgn_eg
    Boolean? winsize
    Boolean? interval
    Boolean? min_cov
    Boolean? length
    Boolean? threshold
    Boolean? out
    Boolean? man
  }
  command <<<
    rnaseq_peakfinder.pl \
      ~{true="--bgpos" false="" bgp_os} \
      ~{true="--bgneg" false="" bgn_eg} \
      ~{true="--winsize" false="" winsize} \
      ~{true="--interval" false="" interval} \
      ~{true="--mincov" false="" min_cov} \
      ~{true="--length" false="" length} \
      ~{true="--threshold" false="" threshold} \
      ~{true="--out" false="" out} \
      ~{true="--man" false="" man}
  >>>
  parameter_meta {
    bgp_os: "BedGraph input file containing coverage of the [+] strand."
    bgn_eg: "BedGraph input file containing coverage of the [-] strand."
    winsize: "Size of the sliding window in nt."
    interval: "Size of the interval the sliding window is shifted at each step ('step size')."
    min_cov: "Minimum coverage required for an enriched region to be considered."
    length: "Maximum length of a peak in nt."
    threshold: "Percentage of the maximum coverage value allowed at both ends of the peaks (default 0.1). This value is used to identify peak boundaries."
    out: "Output directory."
    man: "Prints the manual page and exits"
  }
}