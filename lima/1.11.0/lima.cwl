class: CommandLineTool
id: lima.cwl
inputs:
- id: input
  doc: STR    Source BAM or DATASET
  type: string
  inputBinding:
    position: 0
- id: barcodes
  doc: STR    FASTA or BARCODESET file
  type: string
  inputBinding:
    position: 1
- id: output
  doc: STR    Output BAM or DATASET file
  type: string
  inputBinding:
    position: 2
- id: same
  doc: Only keep same barcodes in a pair in BAM output.
  type: boolean
  inputBinding:
    prefix: --same
- id: different
  doc: Only keep different barcodes in a pair in BAM output. Enforces --min-passes
    ≥ 1.
  type: boolean
  inputBinding:
    prefix: --different
- id: neighbors
  doc: Only output barcode pairs that are neighbors in barcode file.
  type: boolean
  inputBinding:
    prefix: --neighbors
- id: per_read
  doc: Do not tag per ZMW, but per read.
  type: boolean
  inputBinding:
    prefix: --per-read
- id: score_full_pass
  doc: Only use subreads flanked by adapters for barcode identification.
  type: boolean
  inputBinding:
    prefix: --score-full-pass
- id: max_scored_barcode_pairs
  doc: INT    Only use up to N barcode pair regions to find the barcode, 0 means use
    all. [0]
  type: boolean
  inputBinding:
    prefix: --max-scored-barcode-pairs
- id: max_scored_barcodes
  doc: INT    Analyze at maximum the provided number of barcodes per ZMW; 0 means
    deactivated. [0]
  type: boolean
  inputBinding:
    prefix: --max-scored-barcodes
- id: max_scored_adapters
  doc: INT    Analyze at maximum the provided number of adapters per ZMW; 0 means
    deactivated. [0]
  type: boolean
  inputBinding:
    prefix: --max-scored-adapters
- id: min_passes
  doc: INT    Minimal number of full passes. [0]
  type: boolean
  inputBinding:
    prefix: --min-passes
- id: min_length
  doc: INT    Minimum sequence length after clipping. [50]
  type: boolean
  inputBinding:
    prefix: --min-length
- id: max_input_length
  doc: INT    Maximum input sequence length, 0 means deactivated. [0]
  type: boolean
  inputBinding:
    prefix: --max-input-length
- id: bad_adapter_ratio
  doc: FLOAT  Maximum ratio of bad adapter. [0]
  type: boolean
  inputBinding:
    prefix: --bad-adapter-ratio
- id: shared_prefix
  doc: Barcodes may be substrings of others.
  type: boolean
  inputBinding:
    prefix: --shared-prefix
- id: window_size_multi
  doc: 'FLOAT  The candidate region size multiplier: barcode_length * multiplier.
    [3]'
  type: boolean
  inputBinding:
    prefix: --window-size-multi
- id: window_size
  doc: INT    The candidate region size in bp. If set, --window-size-mult will be
    ignored. [0]
  type: boolean
  inputBinding:
    prefix: --window-size
- id: min_ref_span
  doc: FLOAT  Minimum reference span relative to the barcode length. [0.5]
  type: boolean
  inputBinding:
    prefix: --min-ref-span
- id: min_scoring_regions
  doc: INT    Minimum number of barcode regions with sufficient relative span to the
    barcode length. [1]
  type: boolean
  inputBinding:
    prefix: --min-scoring-regions
- id: min_score
  doc: INT    Reads below the minimum barcode score are removed from downstream analysis.
    [0]
  type: boolean
  inputBinding:
    prefix: --min-score
- id: min_end_score
  doc: INT    Minimum end barcode score threshold is applied to the individual leading
    and trailing ends. [0]
  type: boolean
  inputBinding:
    prefix: --min-end-score
- id: min_signal_increase
  doc: INT    The minimal score difference, between first and combined, required to
    call a barcode pair different. [10]
  type: boolean
  inputBinding:
    prefix: --min-signal-increase
- id: min_score_lead
  doc: INT    The minimal score lead required to call a barcode pair significant.
    [10]
  type: boolean
  inputBinding:
    prefix: --min-score-lead
- id: keep_tag_idx_order
  doc: Keep identified order of barcode pair indices in BC tag; CCS only.
  type: boolean
  inputBinding:
    prefix: --keep-tag-idx-order
- id: keep_split_idx_order
  doc: Keep identified order of barcode pair indices in split BAM names; CCS only.
  type: boolean
  inputBinding:
    prefix: --keep-split-idx-order
- id: ccs
  doc: CCS mode, use optimal alignment options -A 1 -B 4 -D 3 -I 3 -X 4.
  type: boolean
  inputBinding:
    prefix: --ccs
- id: match_score
  doc: INT    Score for a sequence match. [4]
  type: boolean
  inputBinding:
    prefix: --match-score
- id: mismatch_penalty
  doc: INT    Penalty for a mismatch. [13]
  type: boolean
  inputBinding:
    prefix: --mismatch-penalty
- id: deletion_penalty
  doc: INT    Deletions penalty. [7]
  type: boolean
  inputBinding:
    prefix: --deletion-penalty
- id: insertion_penalty
  doc: INT    Insertion penalty. [7]
  type: boolean
  inputBinding:
    prefix: --insertion-penalty
- id: branch_penalty
  doc: INT    Branch penalty. [4]
  type: boolean
  inputBinding:
    prefix: --branch-penalty
- id: split_bam
  doc: Split BAM output by barcode pair.
  type: boolean
  inputBinding:
    prefix: --split-bam
- id: split_bam_named
  doc: Split BAM output by resolved barcode pair name.
  type: boolean
  inputBinding:
    prefix: --split-bam-named
- id: files_per_directory
  doc: INT    Group maximum numbers of split barcode output files per directory; 0
    means deactivated. [0]
  type: boolean
  inputBinding:
    prefix: --files-per-directory
- id: reuse_uuids
  doc: Use UUIDs from dataset XML input, must be used with output BAM splitting.
  type: boolean
  inputBinding:
    prefix: --reuse-uuids
- id: bam_handles
  doc: INT    Maximum number of open BAM files. [500]
  type: boolean
  inputBinding:
    prefix: --bam-handles
- id: dump_clips
  doc: Dump clipped regions in a separate output file <prefix>.lima.clips
  type: boolean
  inputBinding:
    prefix: --dump-clips
- id: dump_removed
  doc: Dump removed records to <prefix>.lima.removed.bam.
  type: boolean
  inputBinding:
    prefix: --dump-removed
- id: no_bam
  doc: Do not generate BAM output.
  type: boolean
  inputBinding:
    prefix: --no-bam
- id: no_reports
  doc: Do not generate reports.
  type: boolean
  inputBinding:
    prefix: --no-reports
- id: single_side
  doc: Assign single side barcodes by score clustering.
  type: boolean
  inputBinding:
    prefix: --single-side
- id: scored_adapter_ratio
  doc: FLOAT  Minimum ratio of scored vs sequenced adapters. [0.25]
  type: boolean
  inputBinding:
    prefix: --scored-adapter-ratio
- id: iso_seq
  doc: Activate specialized IsoSeq mode.
  type: boolean
  inputBinding:
    prefix: --isoseq
- id: peek
  doc: INT    Demux the first N ZMWs and return the mean score; 0 means peeking deactivated.
    [0]
  type: boolean
  inputBinding:
    prefix: --peek
- id: guess
  doc: INT    Try to guess the used barcodes, using the provided mean score threshold;
    0 means guessing deactivated. [0]
  type: boolean
  inputBinding:
    prefix: --guess
- id: guess_min_count
  doc: INT    Minimum number of ZMWs observed to whitelist barcodes. [0]
  type: boolean
  inputBinding:
    prefix: --guess-min-count
- id: peek_guess
  doc: Try to infer the used barcodes subset, by peeking at the first 50,000 ZMWs,
    whitelisting barcode pairs with more than 10 counts and mean score ≥ 45.
  type: boolean
  inputBinding:
    prefix: --peek-guess
- id: ignore_bio_samples
  doc: Ignore <BioSamples> from XML input.
  type: boolean
  inputBinding:
    prefix: --ignore-biosamples
- id: num_threads
  doc: INT    Number of threads to use, 0 means autodetection. [0]
  type: boolean
  inputBinding:
    prefix: --num-threads
- id: log_level
  doc: 'STR    Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]'
  type: boolean
  inputBinding:
    prefix: --log-level
- id: log_file
  doc: FILE   Log to a file, instead of stderr.
  type: boolean
  inputBinding:
    prefix: --log-file
outputs: []
cwlVersion: v1.1
baseCommand:
- lima
