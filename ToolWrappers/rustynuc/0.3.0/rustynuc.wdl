version 1.0

task Rustynuc {
  input {
    Boolean? all
    Boolean? no_overlapping
    Boolean? no_q_val
    Boolean? pseudo_count
    Boolean? skip_fishers
    Boolean? verbosity
    Boolean? with_track_line
    Float? af_both_pass
    Float? af_either_pass
    Float? alpha
    File? bcf
    File? bed
    Float? fishers_sig
    Int? max_depth
    Int? min_reads
    Int? quality
    String? reference
    Int? threads
    String? flags
  }
  command <<<
    rustynuc \
      ~{flags} \
      ~{if (all) then "--all" else ""} \
      ~{if (no_overlapping) then "--no-overlapping" else ""} \
      ~{if (no_q_val) then "--no-qval" else ""} \
      ~{if (pseudo_count) then "--pseudocount" else ""} \
      ~{if (skip_fishers) then "--skip-fishers" else ""} \
      ~{if (verbosity) then "--verbosity" else ""} \
      ~{if (with_track_line) then "--with-track-line" else ""} \
      ~{if defined(af_both_pass) then ("--af-both-pass " +  '"' + af_both_pass + '"') else ""} \
      ~{if defined(af_either_pass) then ("--af-either-pass " +  '"' + af_either_pass + '"') else ""} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""} \
      ~{if defined(bcf) then ("--bcf " +  '"' + bcf + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(fishers_sig) then ("--fishers-sig " +  '"' + fishers_sig + '"') else ""} \
      ~{if defined(max_depth) then ("--max-depth " +  '"' + max_depth + '"') else ""} \
      ~{if defined(min_reads) then ("--min-reads " +  '"' + min_reads + '"') else ""} \
      ~{if defined(quality) then ("--quality " +  '"' + quality + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rustynuc:0.3.0--hed695b0_0"
  }
  parameter_meta {
    all: "Whether to process and print information for every position in the BAM file"
    no_overlapping: "Do not count overlapping mates when calculating total depth"
    no_q_val: "Skip calculating qvalue"
    pseudo_count: "Whether to use pseudocounts (increments all counts by 1) when calculating statistics"
    skip_fishers: "Skip applying Fisher's Exact Filter on VCF"
    verbosity: "Determines verbosity of the processing, can be specified multiple times -vvv"
    with_track_line: "Include track line (for correct visualization with IGV)"
    af_both_pass: "AF on both the ff and fr at which point a call in the VCF will excluded\\nfrom the OxoAF filter [default: 0.1]"
    af_either_pass: "AF above this cutoff in EITHER read orientation will be excluded from OxoAF\\nfilter [default: 0.25]"
    alpha: "FDR threshold [default: 0.2]"
    bcf: "BCF/VCF for variants called on the supplied alignment file"
    bed: "A BED file to restrict analysis to specific regions"
    fishers_sig: "Significance threshold for Fisher's test [default: 0.05]"
    max_depth: "Maximum pileup depth to use [default: 1000]"
    min_reads: "Minimum number of aligned reads in ff or fr orientation for a position to\\nbe considered [default: 4]"
    quality: "Minimum base quality to consider [default: 20]"
    reference: "Optional reference which will be used to determine sequence context and\\ntype of change"
    threads: "Number of threads [default: 4]"
    flags: ""
  }
  output {
    File out_stdout = stdout()
  }
}