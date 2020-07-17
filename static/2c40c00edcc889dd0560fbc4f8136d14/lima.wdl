version 1.0

task Lima {
  input {
    Boolean? same
    Boolean? different
    Boolean? neighbors
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
    Boolean? split_bam
    Boolean? split_bam_named
    Boolean? files_per_directory
    Boolean? reuse_uuids
    Boolean? bam_handles
    Boolean? dump_clips
    Boolean? dump_removed
    Boolean? no_bam
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
    String str_source_bam
    String barcodes
    String str_output_bam
  }
  command <<<
    lima \
      ~{str_source_bam} \
      ~{barcodes} \
      ~{str_output_bam} \
      ~{true="--same" false="" same} \
      ~{true="--different" false="" different} \
      ~{true="--neighbors" false="" neighbors} \
      ~{true="--per-read" false="" per_read} \
      ~{true="--score-full-pass" false="" score_full_pass} \
      ~{true="--max-scored-barcode-pairs" false="" max_scored_barcode_pairs} \
      ~{true="--max-scored-barcodes" false="" max_scored_barcodes} \
      ~{true="--max-scored-adapters" false="" max_scored_adapters} \
      ~{true="--min-passes" false="" min_passes} \
      ~{true="--min-length" false="" min_length} \
      ~{true="--max-input-length" false="" max_input_length} \
      ~{true="--bad-adapter-ratio" false="" bad_adapter_ratio} \
      ~{true="--shared-prefix" false="" shared_prefix} \
      ~{true="--window-size-multi" false="" window_size_multi} \
      ~{true="--window-size" false="" window_size} \
      ~{true="--min-ref-span" false="" min_ref_span} \
      ~{true="--min-scoring-regions" false="" min_scoring_regions} \
      ~{true="--min-score" false="" min_score} \
      ~{true="--min-end-score" false="" min_end_score} \
      ~{true="--min-signal-increase" false="" min_signal_increase} \
      ~{true="--min-score-lead" false="" min_score_lead} \
      ~{true="--keep-tag-idx-order" false="" keep_tag_idx_order} \
      ~{true="--keep-split-idx-order" false="" keep_split_idx_order} \
      ~{true="--ccs" false="" ccs} \
      ~{true="--match-score" false="" match_score} \
      ~{true="--mismatch-penalty" false="" mismatch_penalty} \
      ~{true="--deletion-penalty" false="" deletion_penalty} \
      ~{true="--insertion-penalty" false="" insertion_penalty} \
      ~{true="--branch-penalty" false="" branch_penalty} \
      ~{true="--split-bam" false="" split_bam} \
      ~{true="--split-bam-named" false="" split_bam_named} \
      ~{true="--files-per-directory" false="" files_per_directory} \
      ~{true="--reuse-uuids" false="" reuse_uuids} \
      ~{true="--bam-handles" false="" bam_handles} \
      ~{true="--dump-clips" false="" dump_clips} \
      ~{true="--dump-removed" false="" dump_removed} \
      ~{true="--no-bam" false="" no_bam} \
      ~{true="--no-reports" false="" no_reports} \
      ~{true="--single-side" false="" single_side} \
      ~{true="--scored-adapter-ratio" false="" scored_adapter_ratio} \
      ~{true="--isoseq" false="" iso_seq} \
      ~{true="--peek" false="" peek} \
      ~{true="--guess" false="" guess} \
      ~{true="--guess-min-count" false="" guess_min_count} \
      ~{true="--peek-guess" false="" peek_guess} \
      ~{true="--ignore-biosamples" false="" ignore_bio_samples} \
      ~{true="--num-threads" false="" num_threads} \
      ~{true="--log-level" false="" log_level} \
      ~{true="--log-file" false="" log_file}
  >>>
  parameter_meta {
    same: "Only keep same barcodes in a pair in BAM output."
    different: "Only keep different barcodes in a pair in BAM output. Enforces --min-passes ≥ 1."
    neighbors: "Only output barcode pairs that are neighbors in barcode file."
    per_read: "Do not tag per ZMW, but per read."
    score_full_pass: "Only use subreads flanked by adapters for barcode identification."
    max_scored_barcode_pairs: "INT    Only use up to N barcode pair regions to find the barcode, 0 means use all. [0]"
    max_scored_barcodes: "INT    Analyze at maximum the provided number of barcodes per ZMW; 0 means deactivated. [0]"
    max_scored_adapters: "INT    Analyze at maximum the provided number of adapters per ZMW; 0 means deactivated. [0]"
    min_passes: "INT    Minimal number of full passes. [0]"
    min_length: "INT    Minimum sequence length after clipping. [50]"
    max_input_length: "INT    Maximum input sequence length, 0 means deactivated. [0]"
    bad_adapter_ratio: "FLOAT  Maximum ratio of bad adapter. [0]"
    shared_prefix: "Barcodes may be substrings of others."
    window_size_multi: "FLOAT  The candidate region size multiplier: barcode_length * multiplier. [3]"
    window_size: "INT    The candidate region size in bp. If set, --window-size-mult will be ignored. [0]"
    min_ref_span: "FLOAT  Minimum reference span relative to the barcode length. [0.5]"
    min_scoring_regions: "INT    Minimum number of barcode regions with sufficient relative span to the barcode length. [1]"
    min_score: "INT    Reads below the minimum barcode score are removed from downstream analysis. [0]"
    min_end_score: "INT    Minimum end barcode score threshold is applied to the individual leading and trailing ends. [0]"
    min_signal_increase: "INT    The minimal score difference, between first and combined, required to call a barcode pair different. [10]"
    min_score_lead: "INT    The minimal score lead required to call a barcode pair significant. [10]"
    keep_tag_idx_order: "Keep identified order of barcode pair indices in BC tag; CCS only."
    keep_split_idx_order: "Keep identified order of barcode pair indices in split BAM names; CCS only."
    ccs: "CCS mode, use optimal alignment options -A 1 -B 4 -D 3 -I 3 -X 4."
    match_score: "INT    Score for a sequence match. [4]"
    mismatch_penalty: "INT    Penalty for a mismatch. [13]"
    deletion_penalty: "INT    Deletions penalty. [7]"
    insertion_penalty: "INT    Insertion penalty. [7]"
    branch_penalty: "INT    Branch penalty. [4]"
    split_bam: "Split BAM output by barcode pair."
    split_bam_named: "Split BAM output by resolved barcode pair name."
    files_per_directory: "INT    Group maximum numbers of split barcode output files per directory; 0 means deactivated. [0]"
    reuse_uuids: "Use UUIDs from dataset XML input, must be used with output BAM splitting."
    bam_handles: "INT    Maximum number of open BAM files. [500]"
    dump_clips: "Dump clipped regions in a separate output file <prefix>.lima.clips"
    dump_removed: "Dump removed records to <prefix>.lima.removed.bam."
    no_bam: "Do not generate BAM output."
    no_reports: "Do not generate reports."
    single_side: "Assign single side barcodes by score clustering."
    scored_adapter_ratio: "FLOAT  Minimum ratio of scored vs sequenced adapters. [0.25]"
    iso_seq: "Activate specialized IsoSeq mode."
    peek: "INT    Demux the first N ZMWs and return the mean score; 0 means peeking deactivated. [0]"
    guess: "INT    Try to guess the used barcodes, using the provided mean score threshold; 0 means guessing deactivated. [0]"
    guess_min_count: "INT    Minimum number of ZMWs observed to whitelist barcodes. [0]"
    peek_guess: "Try to infer the used barcodes subset, by peeking at the first 50,000 ZMWs, whitelisting barcode pairs with more than 10 counts and mean score ≥ 45."
    ignore_bio_samples: "Ignore <BioSamples> from XML input."
    num_threads: "INT    Number of threads to use, 0 means autodetection. [0]"
    log_level: "STR    Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]"
    log_file: "FILE   Log to a file, instead of stderr."
    str_source_bam: "STR    Source BAM or DATASET"
    barcodes: "STR    FASTA or BARCODESET file"
    str_output_bam: "STR    Output BAM or DATASET file"
  }
}