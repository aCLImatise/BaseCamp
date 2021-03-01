version 1.0

task AmptkUnoise2 {
  input {
    Boolean? fast_q
    Boolean? out
    Boolean? max_ee
    Boolean? minsize
    Boolean? pct_otu
    Boolean? u_search
    Boolean? u_chime_ref
    Boolean? cpus
    Boolean? debug
    String arguments
  }
  command <<<
    amptk unoise2 \
      ~{arguments} \
      ~{if (fast_q) then "--fastq" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (max_ee) then "--maxee" else ""} \
      ~{if (minsize) then "--minsize" else ""} \
      ~{if (pct_otu) then "--pct_otu" else ""} \
      ~{if (u_search) then "--usearch" else ""} \
      ~{if (u_chime_ref) then "--uchime_ref" else ""} \
      ~{if (cpus) then "--cpus" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/amptk:1.5.1--py_1"
  }
  parameter_meta {
    fast_q: "Input FASTQ file (Required)"
    out: "Output base name. Default: out"
    max_ee: "Expected error quality trimming. Default: 1.0"
    minsize: "Minimum size to keep for denoising. Default: 8"
    pct_otu: "OTU Clustering Radius (percent). Default: 97"
    u_search: "Path to USEARCH9. Default: usearch9"
    u_chime_ref: "Run Ref Chimera filtering. Default: off [ITS, LSU, COI, 16S, custom path]"
    cpus: "Number of CPUs to use. Default: all"
    debug: "Keep intermediate files."
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}