version 1.0

task SvtkPetest {
  input {
    Int? window_out
    Int? window_in
    Int? background
    String? samples
    File? index
    File? median_file
    Boolean? log
    String vcf
    String disc
    String f_out
  }
  command <<<
    svtk pe_test \
      ~{vcf} \
      ~{disc} \
      ~{f_out} \
      ~{if defined(window_out) then ("--window-out " +  '"' + window_out + '"') else ""} \
      ~{if defined(window_in) then ("--window-in " +  '"' + window_in + '"') else ""} \
      ~{if defined(background) then ("--background " +  '"' + background + '"') else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(median_file) then ("--medianfile " +  '"' + median_file + '"') else ""} \
      ~{if (log) then "--log" else ""}
  >>>
  parameter_meta {
    window_out: "Window outside breakpoint to query for discordant\\npairs. [500]"
    window_in: "Window inside breakpoint to query for discordant\\npairs. [50]"
    background: "Number of background samples to sample for PE\\nevidence. [160]"
    samples: "Whitelist of samples to restrict testing to."
    index: "Tabix index of discordant pair file. Required if\\ndiscordant pair file is hosted remotely."
    median_file: "Median coverage statistics for each library\\n(optional). If provided, each sample's split counts\\nwill be normalized accordingly. Same format as RdTest,\\none column per sample."
    log: "Print progress log to stderr."
    vcf: "Variants."
    disc: "Table of discordant pair coordinates."
    f_out: "Output table of PE counts."
  }
  output {
    File out_stdout = stdout()
  }
}