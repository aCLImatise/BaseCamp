version 1.0

task HicupFilter {
  input {
    Boolean? config
    Boolean? digest
    Boolean? longest
    Directory? outdir
    Boolean? quiet
    Boolean? shortest
    Boolean? threads
    Boolean? zip
  }
  command <<<
    hicup_filter \
      ~{if (config) then "--config" else ""} \
      ~{if (digest) then "--digest" else ""} \
      ~{if (longest) then "--longest" else ""} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (shortest) then "--shortest" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (zip) then "--zip" else ""}
  >>>
  parameter_meta {
    config: "Specify the optional configuration file"
    digest: "Specify the genome digest file (created by hicup_digester)"
    longest: "Maximum allowable insert size (bps)"
    outdir: "Directory to write output files"
    quiet: "Suppress all progress reports"
    shortest: "Minimum allowable insert size (bps)"
    threads: "Specify the number of threads, allowing simultaneous processing\\nof multiple files"
    zip: "Compress final output files using gzip, or if SAMtools is\\ninstalled, to BAM format"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}