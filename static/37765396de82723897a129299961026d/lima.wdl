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
    Int? match_score
    Boolean? mismatch_penalty
    Boolean? deletion_penalty
    Boolean? insertion_penalty
    Boolean? branch_penalty
    Boolean? split_bam
    Boolean? split_bam_named
    Boolean? files_per_directory
    Boolean? reuse_uuids
    Boolean? bam_handles
    File? dump_clips
    Boolean? dump_removed
    Boolean? no_bam
    Boolean? no_reports
    Boolean? single_side
    Boolean? iso_seq
    Boolean? peek
    Boolean? guess
    Boolean? guess_min_count
    Boolean? peek_guess
    Boolean? ignore_bio_samples
    Boolean? num_threads
    Boolean? log_level
    Boolean? log_file
    String str_source_bam
    String barcodes
    String str_output_bam
    String clustering_dot
  }
  command <<<
    lima \
      ~{str_source_bam} \
      ~{barcodes} \
      ~{str_output_bam} \
      ~{clustering_dot} \
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
      ~{if defined(match_score) then ("--match-score " +  '"' + match_score + '"') else ""} \
      ~{if (mismatch_penalty) then "--mismatch-penalty" else ""} \
      ~{if (deletion_penalty) then "--deletion-penalty" else ""} \
      ~{if (insertion_penalty) then "--insertion-penalty" else ""} \
      ~{if (branch_penalty) then "--branch-penalty" else ""} \
      ~{if (split_bam) then "--split-bam" else ""} \
      ~{if (split_bam_named) then "--split-bam-named" else ""} \
      ~{if (files_per_directory) then "--files-per-directory" else ""} \
      ~{if (reuse_uuids) then "--reuse-uuids" else ""} \
      ~{if (bam_handles) then "--bam-handles" else ""} \
      ~{if (dump_clips) then "--dump-clips" else ""} \
      ~{if (dump_removed) then "--dump-removed" else ""} \
      ~{if (no_bam) then "--no-bam" else ""} \
      ~{if (no_reports) then "--no-reports" else ""} \
      ~{if (single_side) then "--single-side" else ""} \
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
    docker: "None"
  }
  parameter_meta {
    same: "Only keep same barcodes in a pair in\\nBAM output."
    different: "Only keep different barcodes in a pair\\nin BAM output. Enforces --min-passes\\n≥ 1."
    neighbors: "Only output barcode pairs that are\\nneighbors in barcode file."
    per_read: "Do not tag per ZMW, but per read."
    score_full_pass: "Only use subreads flanked by adapters\\nfor barcode identification."
    max_scored_barcode_pairs: "INT    Only use up to N barcode pair regions\\nto find the barcode, 0 means use all.\\n[0]"
    max_scored_barcodes: "INT    Analyze at maximum the provided number\\nof barcodes per ZMW; 0 means\\ndeactivated. [0]"
    max_scored_adapters: "INT    Analyze at maximum the provided number\\nof adapters per ZMW; 0 means\\ndeactivated. [0]"
    min_passes: "INT    Minimal number of full passes. [0]"
    min_length: "INT    Minimum sequence length after clipping.\\n[50]"
    max_input_length: "INT    Maximum input sequence length, 0 means\\ndeactivated. [0]"
    bad_adapter_ratio: "FLOAT  Maximum ratio of bad adapter. [0]"
    shared_prefix: "Barcodes may be substrings of others."
    window_size_multi: "FLOAT  The candidate region size multiplier:\\nbarcode_length * multiplier. [3]"
    window_size: "INT    The candidate region size in bp. If\\nset, --window-size-mult will be\\nignored. [0]"
    min_ref_span: "FLOAT  Minimum reference span relative to the\\nbarcode length. [0.5]"
    min_scoring_regions: "INT    Minimum number of barcode regions with\\nsufficient relative span to the barcode\\nlength. [1]"
    min_score: "INT    Reads below the minimum barcode score\\nare removed from downstream analysis.\\n[0]"
    min_end_score: "INT    Minimum end barcode score threshold is\\napplied to the individual leading and\\ntrailing ends. [0]"
    min_signal_increase: "INT    The minimal score difference, between\\nfirst and combined, required to call a\\nbarcode pair different. [10]"
    min_score_lead: "INT    The minimal score lead required to call\\na barcode pair significant. [10]"
    keep_tag_idx_order: "Keep identified order of barcode pair\\nindices in BC tag; CCS only."
    keep_split_idx_order: "Keep identified order of barcode pair\\nindices in split BAM names; CCS only."
    ccs: "CCS mode, use optimal alignment options"
    match_score: "INT    Score for a sequence match. [4]"
    mismatch_penalty: "INT    Penalty for a mismatch. [13]"
    deletion_penalty: "INT    Deletions penalty. [7]"
    insertion_penalty: "INT    Insertion penalty. [7]"
    branch_penalty: "INT    Branch penalty. [4]"
    split_bam: "Split BAM output by barcode pair."
    split_bam_named: "Split BAM output by resolved barcode\\npair name."
    files_per_directory: "INT    Group maximum numbers of split barcode\\noutput files per directory; 0 means\\ndeactivated. [0]"
    reuse_uuids: "Use UUIDs from dataset XML input, must\\nbe used with output BAM splitting."
    bam_handles: "INT    Maximum number of open BAM files. [500]"
    dump_clips: "Dump clipped regions in a separate\\noutput file <prefix>.lima.clips"
    dump_removed: "Dump removed records to\\n<prefix>.lima.removed.bam."
    no_bam: "Do not generate BAM output."
    no_reports: "Do not generate reports."
    single_side: "Assign single side barcodes by score"
    iso_seq: "Activate specialized IsoSeq mode."
    peek: "INT    Demux the first N ZMWs and return the\\nmean score; 0 means peeking\\ndeactivated. [0]"
    guess: "INT    Try to guess the used barcodes, using\\nthe provided mean score threshold; 0\\nmeans guessing deactivated. [0]"
    guess_min_count: "INT    Minimum number of ZMWs observed to\\nwhitelist barcodes. [0]"
    peek_guess: "Try to infer the used barcodes subset,\\nby peeking at the first 50,000 ZMWs,\\nwhitelisting barcode pairs with more\\nthan 10 counts and mean score ≥ 45."
    ignore_bio_samples: "Ignore <BioSamples> from XML input."
    num_threads: "INT    Number of threads to use, 0 means\\nautodetection. [0]"
    log_level: "STR    Set log level. Valid choices: (TRACE,\\nDEBUG, INFO, WARN, FATAL). [WARN]"
    log_file: "FILE   Log to a file, instead of stderr."
    str_source_bam: "STR    Source BAM or DATASET"
    barcodes: "STR    FASTA or BARCODESET file"
    str_output_bam: "STR    Output BAM or DATASET file"
    clustering_dot: "--scored-adapter-ratio         FLOAT  Minimum ratio of scored vs sequenced"
  }
  output {
    File out_stdout = stdout()
    File out_neighbors = "${in_neighbors}"
    File out_dump_clips = "${in_dump_clips}"
  }
}