version 1.0

task RnaseqPeakfinderpl {
  input {
    Boolean? bgp_os
    Boolean? bgn_eg
    Boolean? winsize
    Boolean? interval
    Boolean? min_cov
    Boolean? length
    Boolean? threshold
    Directory? out
    Boolean? man
  }
  command <<<
    rnaseq_peakfinder_pl \
      ~{if (bgp_os) then "--bgpos" else ""} \
      ~{if (bgn_eg) then "--bgneg" else ""} \
      ~{if (winsize) then "--winsize" else ""} \
      ~{if (interval) then "--interval" else ""} \
      ~{if (min_cov) then "--mincov" else ""} \
      ~{if (length) then "--length" else ""} \
      ~{if (threshold) then "--threshold" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (man) then "--man" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bgp_os: "BedGraph input file containing coverage of the [+] strand."
    bgn_eg: "BedGraph input file containing coverage of the [-] strand."
    winsize: "Size of the sliding window in nt."
    interval: "Size of the interval the sliding window is shifted at each step\\n('step size')."
    min_cov: "Minimum coverage required for an enriched region to be considered."
    length: "Maximum length of a peak in nt."
    threshold: "Percentage of the maximum coverage value allowed at both ends of the\\npeaks (default 0.1). This value is used to identify peak boundaries."
    out: "Output directory."
    man: "Prints the manual page and exits\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
  }
}