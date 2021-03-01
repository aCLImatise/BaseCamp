version 1.0

task Nucmer {
  input {
    String? max_match
    Boolean? mum
    Int? break_len
    Int? min_cluster
    Int? diag_diff
    Int? diag_factor
    Boolean? no_extend
    Boolean? forward
    Int? max_gap
    Int? min_match
    Int? min_align
    Boolean? no_optimize
    Boolean? reverse
    Boolean? no_simplify
    String? prefix
    File? delta
    File? sam_short
    File? sam_long
    String? save
    File? load
    String? batch
    Int? threads
    Boolean? full_help
    String ref
  }
  command <<<
    nucmer \
      ~{ref} \
      ~{if defined(max_match) then ("--maxmatch " +  '"' + max_match + '"') else ""} \
      ~{if (mum) then "--mum" else ""} \
      ~{if defined(break_len) then ("--breaklen " +  '"' + break_len + '"') else ""} \
      ~{if defined(min_cluster) then ("--mincluster " +  '"' + min_cluster + '"') else ""} \
      ~{if defined(diag_diff) then ("--diagdiff " +  '"' + diag_diff + '"') else ""} \
      ~{if defined(diag_factor) then ("--diagfactor " +  '"' + diag_factor + '"') else ""} \
      ~{if (no_extend) then "--noextend" else ""} \
      ~{if (forward) then "--forward" else ""} \
      ~{if defined(max_gap) then ("--maxgap " +  '"' + max_gap + '"') else ""} \
      ~{if defined(min_match) then ("--minmatch " +  '"' + min_match + '"') else ""} \
      ~{if defined(min_align) then ("--minalign " +  '"' + min_align + '"') else ""} \
      ~{if (no_optimize) then "--nooptimize" else ""} \
      ~{if (reverse) then "--reverse" else ""} \
      ~{if (no_simplify) then "--nosimplify" else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(delta) then ("--delta " +  '"' + delta + '"') else ""} \
      ~{if defined(sam_short) then ("--sam-short " +  '"' + sam_short + '"') else ""} \
      ~{if defined(sam_long) then ("--sam-long " +  '"' + sam_long + '"') else ""} \
      ~{if defined(save) then ("--save " +  '"' + save + '"') else ""} \
      ~{if defined(load) then ("--load " +  '"' + load + '"') else ""} \
      ~{if defined(batch) then ("--batch " +  '"' + batch + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (full_help) then "--full-help" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mummer4:4.0.0rc1--pl526he1b5a44_0"
  }
  parameter_meta {
    max_match: "different bevahiors."
    mum: "Use anchor matches that are unique in both the reference and query (false)"
    break_len: "Set the distance an alignment extension will attempt to extend poor scoring regions before giving up (200)"
    min_cluster: "Sets the minimum length of a cluster of matches (65)"
    diag_diff: "Set the maximum diagonal difference between two adjacent anchors in a cluster (5)"
    diag_factor: "Set the maximum diagonal difference between two adjacent anchors in a cluster as a differential fraction of the gap length (0.12)"
    no_extend: "Do not perform cluster extension step (false)"
    forward: "Use only the forward strand of the Query sequences (false)"
    max_gap: "Set the maximum gap between two adjacent matches in a cluster (90)"
    min_match: "Set the minimum length of a single exact match (20)"
    min_align: "Minimum length of an alignment, after clustering and extension (0)"
    no_optimize: "No alignment score optimization, i.e. if an alignment extension reaches the end of a sequence, it will not backtrack to optimize the alignment score and instead terminate the alignment at the end of the sequence (false)"
    reverse: "Use only the reverse complement of the Query sequences (false)"
    no_simplify: "Don't simplify alignments by removing shadowed clusters. Use this option when aligning a sequence to itself to look for repeats (false)"
    prefix: "Write output to PREFIX.delta (out)"
    delta: "Output delta file to PATH (instead of PREFIX.delta)"
    sam_short: "Output SAM file to PATH, short format"
    sam_long: "Output SAM file to PATH, long format"
    save: "Save suffix array to files starting with PREFIX"
    load: "Load suffix array from file starting with PREFIX"
    batch: "Proceed by batch of chunks of BASES from the reference"
    threads: "Use NUM threads (# of cores)"
    full_help: "Detailed help"
    ref: ""
  }
  output {
    File out_stdout = stdout()
    File out_delta = "${in_delta}"
    File out_sam_short = "${in_sam_short}"
    File out_sam_long = "${in_sam_long}"
  }
}