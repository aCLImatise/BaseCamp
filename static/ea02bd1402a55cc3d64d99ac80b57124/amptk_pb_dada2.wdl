version 1.0

task AmptkPbdada2 {
  input {
    Boolean? fast_q
    Boolean? out
    Boolean? min_reads
    Boolean? read_qual
    Boolean? barcode_qual
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
    amptk pb_dada2 \
      ~{arguments} \
      ~{if (fast_q) then "--fastq" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (min_reads) then "--min_reads" else ""} \
      ~{if (read_qual) then "--read_qual" else ""} \
      ~{if (barcode_qual) then "--barcode_qual" else ""} \
      ~{if (pct_otu) then "--pct_otu" else ""} \
      ~{if (platform) then "--platform" else ""} \
      ~{if (chimera_method) then "--chimera_method" else ""} \
      ~{if (pool) then "--pool" else ""} \
      ~{if (pseudo_pool) then "--pseudopool" else ""} \
      ~{if (u_chime_ref) then "--uchime_ref" else ""} \
      ~{if (cpus) then "--cpus" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/amptk:1.5.1--py_1"
  }
  parameter_meta {
    fast_q: "Input FASTQ file (Required)"
    out: "Output base name."
    min_reads: "Minimum number of reads per sample. Default: 10"
    read_qual: "Minimum read quality. Default: 0.95 [0-1]"
    barcode_qual: "Barcode Quality score. Default: 80 [0-100]"
    pct_otu: "OTU Clustering Radius (percent). Default: 97"
    platform: "Sequencing platform. Default: pacbio"
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