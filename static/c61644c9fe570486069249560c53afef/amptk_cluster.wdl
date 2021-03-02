version 1.0

task AmptkCluster {
  input {
    Boolean? fast_q
    Boolean? out
    Boolean? max_ee
    Boolean? pct_otu
    Boolean? minsize
    Boolean? u_chime_ref
    Boolean? map_filtered
    Boolean? u_noise
    Boolean? debug
    Boolean? cpus
    Boolean? u_search
    String arguments
  }
  command <<<
    amptk cluster \
      ~{arguments} \
      ~{if (fast_q) then "--fastq" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (max_ee) then "--maxee" else ""} \
      ~{if (pct_otu) then "--pct_otu" else ""} \
      ~{if (minsize) then "--minsize" else ""} \
      ~{if (u_chime_ref) then "--uchime_ref" else ""} \
      ~{if (map_filtered) then "--map_filtered" else ""} \
      ~{if (u_noise) then "--unoise" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (cpus) then "--cpus" else ""} \
      ~{if (u_search) then "--usearch" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_q: "Input FASTQ file (Required)"
    out: "Output base name. Default: out"
    max_ee: "Expected error quality trimming. Default: 1.0"
    pct_otu: "OTU Clustering Radius (percent). Default: 97"
    minsize: "Minimum size to keep (singleton filter). Default: 2"
    u_chime_ref: "Run Ref Chimera filtering. Default: off [ITS, LSU, COI, 16S, custom path]"
    map_filtered: "Map quality filtered reads back to OTUs. Default: off"
    u_noise: "Run De-noising pre-clustering (UNOISE). Default: off"
    debug: "Keep intermediate files."
    cpus: "Number of CPUs to use. Default: all"
    u_search: "USEARCH executable. Default: usearch9"
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}