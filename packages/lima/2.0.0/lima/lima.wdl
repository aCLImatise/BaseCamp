version 1.0

task Lima {
  input {
    Boolean? same
    Boolean? different
    File? neighbors
    Boolean? per_read
    Boolean? score_full_pass
    Boolean? max_scored_barcode_pairs
    Boolean? max_scored_barcodes
    Boolean? max_scored_adapters
    Boolean? min_passes
    Boolean? min_length
    Boolean? max_input_length
    Boolean? bad_adapter_ratio
    Boolean? shared_prefix
    Boolean? window_size_multi
    Boolean? window_size
    Boolean? min_ref_span
    Boolean? min_scoring_regions
    Boolean? min_score
    Boolean? min_end_score
    Boolean? min_signal_increase
    Boolean? min_score_lead
    Boolean? keep_tag_idx_order
    Boolean? keep_split_idx_order
    Boolean? ccs
    Boolean? match_score
    Boolean? mismatch_penalty
    Boolean? deletion_penalty
    Boolean? insertion_penalty
    Boolean? branch_penalty
    Boolean? split
    Boolean? split_named
    Boolean? files_per_directory
    Boolean? reuse_uuids
    Boolean? output_handles
    File? dump_clips
    Boolean? dump_removed
    Boolean? no_output
    Boolean? no_reports
    Boolean? single_side
    Boolean? scored_adapter_ratio
    Boolean? iso_seq
    Boolean? peek
    Boolean? guess
    Boolean? guess_min_count
    Boolean? peek_guess
    Boolean? ignore_bio_samples
    Boolean? num_threads
    Boolean? log_level
    Boolean? log_file
    String barcodes_dot_fa
  }
  command <<<
    lima \
      ~{barcodes_dot_fa} \
      ~{if (same) then "--same" else ""} \
      ~{if (different) then "--different" else ""} \
      ~{if (neighbors) then "--neighbors" else ""} \
      ~{if (per_read) then "--per-read" else ""} \
      ~{if (score_full_pass) then "--score-full-pass" else ""} \
      ~{if (max_scored_barcode_pairs) then "--max-scored-barcode-pairs" else ""} \
      ~{if (max_scored_barcodes) then "--max-scored-barcodes" else ""} \
      ~{if (max_scored_adapters) then "--max-scored-adapters" else ""} \
      ~{if (min_passes) then "--min-passes" else ""} \
      ~{if (min_length) then "--min-length" else ""} \
      ~{if (max_input_length) then "--max-input-length" else ""} \
      ~{if (bad_adapter_ratio) then "--bad-adapter-ratio" else ""} \
      ~{if (shared_prefix) then "--shared-prefix" else ""} \
      ~{if (window_size_multi) then "--window-size-multi" else ""} \
      ~{if (window_size) then "--window-size" else ""} \
      ~{if (min_ref_span) then "--min-ref-span" else ""} \
      ~{if (min_scoring_regions) then "--min-scoring-regions" else ""} \
      ~{if (min_score) then "--min-score" else ""} \
      ~{if (min_end_score) then "--min-end-score" else ""} \
      ~{if (min_signal_increase) then "--min-signal-increase" else ""} \
      ~{if (min_score_lead) then "--min-score-lead" else ""} \
      ~{if (keep_tag_idx_order) then "--keep-tag-idx-order" else ""} \
      ~{if (keep_split_idx_order) then "--keep-split-idx-order" else ""} \
      ~{if (ccs) then "--ccs" else ""} \
      ~{if (match_score) then "--match-score" else ""} \
      ~{if (mismatch_penalty) then "--mismatch-penalty" else ""} \
      ~{if (deletion_penalty) then "--deletion-penalty" else ""} \
      ~{if (insertion_penalty) then "--insertion-penalty" else ""} \
      ~{if (branch_penalty) then "--branch-penalty" else ""} \
      ~{if (split) then "--split" else ""} \
      ~{if (split_named) then "--split-named" else ""} \
      ~{if (files_per_directory) then "--files-per-directory" else ""} \
      ~{if (reuse_uuids) then "--reuse-uuids" else ""} \
      ~{if (output_handles) then "--output-handles" else ""} \
      ~{if (dump_clips) then "--dump-clips" else ""} \
      ~{if (dump_removed) then "--dump-removed" else ""} \
      ~{if (no_output) then "--no-output" else ""} \
      ~{if (no_reports) then "--no-reports" else ""} \
      ~{if (single_side) then "--single-side" else ""} \
      ~{if (scored_adapter_ratio) then "--scored-adapter-ratio" else ""} \
      ~{if (iso_seq) then "--isoseq" else ""} \
      ~{if (peek) then "--peek" else ""} \
      ~{if (guess) then "--guess" else ""} \
      ~{if (guess_min_count) then "--guess-min-count" else ""} \
      ~{if (peek_guess) then "--peek-guess" else ""} \
      ~{if (ignore_bio_samples) then "--ignore-biosamples" else ""} \
      ~{if (num_threads) then "--num-threads" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_file) then "--log-file" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/lima:2.0.0--0"
  }
  parameter_meta {
    same: "Only keep same barcodes in a pair in output."
    different: "Only keep different barcodes in a pair in output. Enforces --min-passes ≥ 1."
    neighbors: "Only output barcode pairs that are neighbors in barcode file."
    per_read: "Do not tag per ZMW, but per read."
    score_full_pass: "Only use subreads flanked by adapters for barcode identification."
    max_scored_barcode_pairs: "INT    Only use up to N barcode pair regions to find the barcode, 0 means use all. [0]"
    max_scored_barcodes: "INT    Analyze at maximum the provided number of barcodes per ZMW; 0 means\\ndeactivated. [0]"
    max_scored_adapters: "INT    Analyze at maximum the provided number of adapters per ZMW; 0 means\\ndeactivated. [0]"
    min_passes: "INT    Minimal number of full passes. [0]"
    min_length: "INT    Minimum sequence length after clipping. [50]"
    max_input_length: "INT    Maximum input sequence length, 0 means deactivated. [0]"
    bad_adapter_ratio: "FLOAT  Maximum ratio of bad adapter. [0]"
    shared_prefix: "Barcodes may be substrings of others."
    window_size_multi: "FLOAT  The candidate region size multiplier: barcode_length * multiplier. [3]"
    window_size: "INT    The candidate region size in bp. If set, --window-size-mult will be ignored.\\n[0]"
    min_ref_span: "FLOAT  Minimum reference span relative to the barcode length. [0.5]"
    min_scoring_regions: "INT    Minimum number of barcode regions with sufficient relative span to the barcode\\nlength. [1]"
    min_score: "INT    Reads below the minimum barcode score are removed from downstream analysis. [0]"
    min_end_score: "INT    Minimum end barcode score threshold is applied to the individual leading and\\ntrailing ends. [0]"
    min_signal_increase: "INT    The minimal score difference, between first and combined, required to call a\\nbarcode pair different. [10]"
    min_score_lead: "INT    The minimal score lead required to call a barcode pair significant. [10]"
    keep_tag_idx_order: "Keep identified order of barcode pair indices in BC tag; CCS only."
    keep_split_idx_order: "Keep identified order of barcode pair indices in split output names; CCS only."
    ccs: "CCS mode, use optimal alignment options -A 1 -B 4 -D 3 -I 3 -X 4."
    match_score: "INT    Score for a sequence match. [4]"
    mismatch_penalty: "INT    Penalty for a mismatch. [13]"
    deletion_penalty: "INT    Deletions penalty. [7]"
    insertion_penalty: "INT    Insertion penalty. [7]"
    branch_penalty: "INT    Branch penalty. [4]"
    split: "Split output by barcode pair."
    split_named: "Split output by resolved barcode pair name."
    files_per_directory: "INT    Group maximum numbers of split barcode output files per directory; 0 means\\ndeactivated. [0]"
    reuse_uuids: "Use UUIDs from dataset XML input, must be used with output BAM splitting."
    output_handles: "INT    Maximum number of open output files. [500]"
    dump_clips: "Dump clipped regions in a separate output file <prefix>.lima.clips"
    dump_removed: "Dump removed records to <prefix>.lima.removed.SUFFIX"
    no_output: "Do not generate demultiplexed output."
    no_reports: "Do not generate reports."
    single_side: "Assign single side barcodes by score clustering."
    scored_adapter_ratio: "FLOAT  Minimum ratio of scored vs sequenced adapters. [0.25]"
    iso_seq: "Activate specialized IsoSeq mode."
    peek: "INT    Demux the first N ZMWs and return the mean score; 0 means peeking deactivated.\\n[0]"
    guess: "INT    Try to guess the used barcodes, using the provided mean score threshold; 0\\nmeans guessing deactivated. [0]"
    guess_min_count: "INT    Minimum number of ZMWs observed to whitelist barcodes. [0]"
    peek_guess: "Try to infer the used barcodes subset, by peeking at the first 50,000 ZMWs,\\nwhitelisting barcode pairs with more than 10 counts and mean score ≥ 45."
    ignore_bio_samples: "Ignore <BioSamples> from XML input."
    num_threads: "INT    Number of threads to use, 0 means autodetection. [0]"
    log_level: "STR    Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]"
    log_file: "FILE   Log to a file, instead of stderr."
    barcodes_dot_fa: "STR    Barcode FASTA or BarcodeSet XML"
  }
  output {
    File out_stdout = stdout()
    File out_neighbors = "${in_neighbors}"
    File out_dump_clips = "${in_dump_clips}"
  }
}