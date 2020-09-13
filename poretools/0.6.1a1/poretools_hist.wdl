version 1.0

task PoretoolsHist {
  input {
    Boolean? quiet
    Int? min_length
    Int? max_length
    Int? num_bins
    File? save_as
    Boolean? theme_bw
    Boolean? watch
    String files
  }
  command <<<
    poretools hist \
      ~{files} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(max_length) then ("--max-length " +  '"' + max_length + '"') else ""} \
      ~{if defined(num_bins) then ("--num-bins " +  '"' + num_bins + '"') else ""} \
      ~{if defined(save_as) then ("--saveas " +  '"' + save_as + '"') else ""} \
      ~{if (theme_bw) then "--theme-bw" else ""} \
      ~{if (watch) then "--watch" else ""}
  >>>
  parameter_meta {
    quiet: "Do not output warnings to stderr"
    min_length: "Minimum read length to be included in histogram."
    max_length: "Maximum read length to be included in histogram."
    num_bins: "The number of histogram bins."
    save_as: "Save the plot to a file."
    theme_bw: "Use a black and white theme."
    watch: "Monitor a directory."
    files: "The input FAST5 files."
  }
  output {
    File out_stdout = stdout()
  }
}