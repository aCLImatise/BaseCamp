version 1.0

task HicupDeduplicator {
  input {
    Boolean? config
    Directory? outdir
    Boolean? quiet
    Boolean? threads
    Boolean? zip
  }
  command <<<
    hicup_deduplicator \
      ~{if (config) then "--config" else ""} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (zip) then "--zip" else ""}
  >>>
  parameter_meta {
    config: "Specify the configuration file"
    outdir: "Directory to write output files"
    quiet: "Suppress progress reports (except warnings)"
    threads: "Number of threads to use, allowing simultaneous processing  of\\ndifferent files"
    zip: "Compress output"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}