version 1.0

task AmptkDada2 {
  input {
    Boolean? fast_q
    Boolean? out
    Boolean? min_reads
    Boolean? length
    Boolean? max_ee
    Boolean? pct_otu
    Boolean? platform
    Boolean? chimera_method
    Boolean? pool
    Boolean? pseudo_pool
    Boolean? u_chime_ref
    Boolean? cpus
    Boolean? debug
    String arguments
  }
  command <<<
    amptk dada2 \
      ~{arguments} \
      ~{if (fast_q) then "--fastq" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (min_reads) then "--min_reads" else ""} \
      ~{if (length) then "--length" else ""} \
      ~{if (max_ee) then "--maxee" else ""} \
      ~{if (pct_otu) then "--pct_otu" else ""} \
      ~{if (platform) then "--platform" else ""} \
      ~{if (chimera_method) then "--chimera_method" else ""} \
      ~{if (pool) then "--pool" else ""} \
      ~{if (pseudo_pool) then "--pseudopool" else ""} \
      ~{if (u_chime_ref) then "--uchime_ref" else ""} \
      ~{if (cpus) then "--cpus" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    fast_q: "Input FASTQ file (Required)"
    out: "Output base name. Default: dada2"
    min_reads: "Minimum number of reads per sample. Default: 10"
    length: "Length to trim reads."
    max_ee: "Expected error quality trimming. Default: 1.0"
    pct_otu: "OTU Clustering Radius (percent). Default: 97"
    platform: "Sequencing platform. [ion, illumina, 454]. Default: ion"
    chimera_method: "DADA2 de novo chimera method. Default: consensus [consensus,pooled,per-sample]"
    pool: "Pool all samples together for DADA2. Default: off"
    pseudo_pool: "Pseudopooling samples for DADA2. Default: off"
    u_chime_ref: "Run Ref Chimera filtering. Default: off [ITS, LSU, COI, 16S, custom path]"
    cpus: "Number of CPUs to use. Default: all"
    debug: "Keep intermediate files."
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}