version 1.0

task SvtkPeTest {
  input {
    String? window_out
    String? window_in
    String? background
    String? samples
    String? index
    String? median_file
    Boolean? log
    String vcf
    String disc
    String f_out
  }
  command <<<
    svtk pe-test \
      ~{vcf} \
      ~{disc} \
      ~{f_out} \
      ~{if defined(window_out) then ("--window-out " +  '"' + window_out + '"') else ""} \
      ~{if defined(window_in) then ("--window-in " +  '"' + window_in + '"') else ""} \
      ~{if defined(background) then ("--background " +  '"' + background + '"') else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(median_file) then ("--medianfile " +  '"' + median_file + '"') else ""} \
      ~{true="--log" false="" log}
  >>>
  parameter_meta {
    window_out: "Window outside breakpoint to query for discordant pairs. [500]"
    window_in: "Window inside breakpoint to query for discordant pairs. [50]"
    background: "Number of background samples to sample for PE evidence. [160]"
    samples: "Whitelist of samples to restrict testing to."
    index: "Tabix index of discordant pair file. Required if discordant pair file is hosted remotely."
    median_file: "Median coverage statistics for each library (optional). If provided, each sample's split counts will be normalized accordingly. Same format as RdTest, one column per sample."
    log: "Print progress log to stderr."
    vcf: "Variants."
    disc: "Table of discordant pair coordinates."
    f_out: "Output table of PE counts."
  }
}