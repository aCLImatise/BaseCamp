version 1.0

task PancakeOvlhifi {
  input {
    Boolean? out_fmt
    Boolean? freq_percentile
    Boolean? min_qlen
    Boolean? min_tlen
    Boolean? max_seed_dist
    Boolean? min_num_seeds
    Boolean? min_cov_bases
    Boolean? min_anchor_span
    Boolean? chain_bw
    Boolean? aln_bw
    Boolean? aln_diff_rate
    Boolean? min_idt
    Boolean? no_snps
    Boolean? min_map_len
    Boolean? skip_sym
    Boolean? one_hit_per_target
    Boolean? write_rev
    Boolean? write_ids
    Boolean? write_cigar
    Boolean? dt_dist
    Boolean? ext_dist
    Boolean? combine
    Boolean? best_n
    Boolean? use_hpc
    Boolean? traceback
    Boolean? mask_hp
    Boolean? num_threads
    Boolean? log_level
    Boolean? log_file
    String target_prefix
    String query_prefix
    String target_block
    String query_block_start
    String query_block_end
    String mode_dot
    String calculation_dot
  }
  command <<<
    pancake ovl_hifi \
      ~{target_prefix} \
      ~{query_prefix} \
      ~{target_block} \
      ~{query_block_start} \
      ~{query_block_end} \
      ~{mode_dot} \
      ~{calculation_dot} \
      ~{if (out_fmt) then "--out-fmt" else ""} \
      ~{if (freq_percentile) then "--freq-percentile" else ""} \
      ~{if (min_qlen) then "--min-qlen" else ""} \
      ~{if (min_tlen) then "--min-tlen" else ""} \
      ~{if (max_seed_dist) then "--max-seed-dist" else ""} \
      ~{if (min_num_seeds) then "--min-num-seeds" else ""} \
      ~{if (min_cov_bases) then "--min-cov-bases" else ""} \
      ~{if (min_anchor_span) then "--min-anchor-span" else ""} \
      ~{if (chain_bw) then "--chain-bw" else ""} \
      ~{if (aln_bw) then "--aln-bw" else ""} \
      ~{if (aln_diff_rate) then "--aln-diff-rate" else ""} \
      ~{if (min_idt) then "--min-idt" else ""} \
      ~{if (no_snps) then "--no-snps" else ""} \
      ~{if (min_map_len) then "--min-map-len" else ""} \
      ~{if (skip_sym) then "--skip-sym" else ""} \
      ~{if (one_hit_per_target) then "--one-hit-per-target" else ""} \
      ~{if (write_rev) then "--write-rev" else ""} \
      ~{if (write_ids) then "--write-ids" else ""} \
      ~{if (write_cigar) then "--write-cigar" else ""} \
      ~{if (dt_dist) then "--dt-dist" else ""} \
      ~{if (ext_dist) then "--ext-dist" else ""} \
      ~{if (combine) then "--combine" else ""} \
      ~{if (best_n) then "--bestn" else ""} \
      ~{if (use_hpc) then "--use-hpc" else ""} \
      ~{if (traceback) then "--traceback" else ""} \
      ~{if (mask_hp) then "--mask-hp" else ""} \
      ~{if (num_threads) then "--num-threads" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_file) then "--log-file" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    out_fmt: "STR    Select the output format. Valid choices: (m4, ipa). [m4]"
    freq_percentile: "FLOAT  Filter frequent kmers. [0.0002]"
    min_qlen: "INT    Ignore queries shorter than this. [50]"
    min_tlen: "INT    Ignore targets shorter than this. [50]"
    max_seed_dist: "INT    Maximum distance between two seeds to join into an anchor. [5000]"
    min_num_seeds: "INT    Minimum number of seeds in an anchor. [3]"
    min_cov_bases: "INT    Minimum number of bases covered by kmers in an anchor. [30]"
    min_anchor_span: "INT    Minimum chain span to retain it. [1000]"
    chain_bw: "INT    Diagonal bandwidth to merge seeds into chains. [100]"
    aln_bw: "FLOAT  Bandwidth for alignment, fraction of the query span. [0.01]"
    aln_diff_rate: "FLOAT  Expected maximum diff rate between sequences. [0.03]"
    min_idt: "FLOAT  Minimum percent alignment identity allowed to report the alignment. This is an overall\\nthreshold which takes into account both indels and SNPs. [98]"
    no_snps: "Ignore SNPs when computing the identity for an overlap. This only works in the traceback"
    min_map_len: "INT    Output only alignments above this length. [1000]"
    skip_sym: "If Aid < Bid, only compute overlap Aid->Bid and skip computing overlap for Bid->Aid."
    one_hit_per_target: "Allow only one alignment per query/target pair."
    write_rev: "For eveery overlap, write out its reverse complement too."
    write_ids: "Output overlaps will contain numeric IDs for the A and B reads (instead of names)."
    write_cigar: "Write the CIGAR string if the sensitive alignment mode is applied."
    dt_dist: "INT    Allowed distance of an overlap from the beginning of the sequences to call the overlap a\\ndovetail. [0]"
    ext_dist: "INT    Heuristically modify the coordinats of an overlap into a dovetail overlap if are within\\nthis distance from the edges of the reads. [0]"
    combine: "INT    Combines this many query blocks into one larger block for processing. [1]"
    best_n: "INT    Output only best N alignments. [0]"
    use_hpc: "Enable homopolymer compression."
    traceback: "Run alignment traceback and compute mismatches."
    mask_hp: "Mask homopolymer errors when traceback is generated. This will impact identity"
    num_threads: "INT    Number of threads to use, 0 means autodetection. [0]"
    log_level: "STR    Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]"
    log_file: "FILE   Log to a file, instead of stderr."
    target_prefix: "STR    Prefix of the target SeqDB and SeedDB files. It should match."
    query_prefix: "STR    Prefix of the query SeqDB and SeedDB files. It should match."
    target_block: "INT    Block ID from the target DB. Queries will be mapped only onto this block."
    query_block_start: "INT    Start block ID for a range of blocks to map. Zero based."
    query_block_end: "INT    Start block ID for a range of blocks to map. Zero based, non-inclusive. Value == 0 runs\\nuntil the end block."
    mode_dot: "--no-indels                  Ignore indels when computing the identity for an overlap. This only works in the"
    calculation_dot: "--mask-repeats               Mask indels in simple exact repeats when traceback is generated. This will impact"
  }
  output {
    File out_stdout = stdout()
  }
}