class: CommandLineTool
id: lima.cwl
inputs:
- id: in_same
  doc: Only keep same barcodes in a pair in output.
  type: boolean?
  inputBinding:
    prefix: --same
- id: in_different
  doc: Only keep different barcodes in a pair in output. Enforces --min-passes ≥ 1.
  type: boolean?
  inputBinding:
    prefix: --different
- id: in_neighbors
  doc: Only output barcode pairs that are neighbors in barcode file.
  type: File?
  inputBinding:
    prefix: --neighbors
- id: in_per_read
  doc: Do not tag per ZMW, but per read.
  type: boolean?
  inputBinding:
    prefix: --per-read
- id: in_score_full_pass
  doc: Only use subreads flanked by adapters for barcode identification.
  type: boolean?
  inputBinding:
    prefix: --score-full-pass
- id: in_max_scored_barcode_pairs
  doc: INT    Only use up to N barcode pair regions to find the barcode, 0 means use
    all. [0]
  type: boolean?
  inputBinding:
    prefix: --max-scored-barcode-pairs
- id: in_max_scored_barcodes
  doc: "INT    Analyze at maximum the provided number of barcodes per ZMW; 0 means\n\
    deactivated. [0]"
  type: boolean?
  inputBinding:
    prefix: --max-scored-barcodes
- id: in_max_scored_adapters
  doc: "INT    Analyze at maximum the provided number of adapters per ZMW; 0 means\n\
    deactivated. [0]"
  type: boolean?
  inputBinding:
    prefix: --max-scored-adapters
- id: in_min_passes
  doc: INT    Minimal number of full passes. [0]
  type: boolean?
  inputBinding:
    prefix: --min-passes
- id: in_min_length
  doc: INT    Minimum sequence length after clipping. [50]
  type: boolean?
  inputBinding:
    prefix: --min-length
- id: in_max_input_length
  doc: INT    Maximum input sequence length, 0 means deactivated. [0]
  type: boolean?
  inputBinding:
    prefix: --max-input-length
- id: in_bad_adapter_ratio
  doc: FLOAT  Maximum ratio of bad adapter. [0]
  type: boolean?
  inputBinding:
    prefix: --bad-adapter-ratio
- id: in_shared_prefix
  doc: Barcodes may be substrings of others.
  type: boolean?
  inputBinding:
    prefix: --shared-prefix
- id: in_window_size_multi
  doc: 'FLOAT  The candidate region size multiplier: barcode_length * multiplier.
    [3]'
  type: boolean?
  inputBinding:
    prefix: --window-size-multi
- id: in_window_size
  doc: "INT    The candidate region size in bp. If set, --window-size-mult will be\
    \ ignored.\n[0]"
  type: boolean?
  inputBinding:
    prefix: --window-size
- id: in_min_ref_span
  doc: FLOAT  Minimum reference span relative to the barcode length. [0.5]
  type: boolean?
  inputBinding:
    prefix: --min-ref-span
- id: in_min_scoring_regions
  doc: "INT    Minimum number of barcode regions with sufficient relative span to\
    \ the barcode\nlength. [1]"
  type: boolean?
  inputBinding:
    prefix: --min-scoring-regions
- id: in_min_score
  doc: INT    Reads below the minimum barcode score are removed from downstream analysis.
    [0]
  type: boolean?
  inputBinding:
    prefix: --min-score
- id: in_min_end_score
  doc: "INT    Minimum end barcode score threshold is applied to the individual leading\
    \ and\ntrailing ends. [0]"
  type: boolean?
  inputBinding:
    prefix: --min-end-score
- id: in_min_signal_increase
  doc: "INT    The minimal score difference, between first and combined, required\
    \ to call a\nbarcode pair different. [10]"
  type: boolean?
  inputBinding:
    prefix: --min-signal-increase
- id: in_min_score_lead
  doc: INT    The minimal score lead required to call a barcode pair significant.
    [10]
  type: boolean?
  inputBinding:
    prefix: --min-score-lead
- id: in_keep_tag_idx_order
  doc: Keep identified order of barcode pair indices in BC tag; CCS only.
  type: boolean?
  inputBinding:
    prefix: --keep-tag-idx-order
- id: in_keep_split_idx_order
  doc: Keep identified order of barcode pair indices in split output names; CCS only.
  type: boolean?
  inputBinding:
    prefix: --keep-split-idx-order
- id: in_ccs
  doc: CCS mode, use optimal alignment options -A 1 -B 4 -D 3 -I 3 -X 4.
  type: boolean?
  inputBinding:
    prefix: --ccs
- id: in_match_score
  doc: INT    Score for a sequence match. [4]
  type: boolean?
  inputBinding:
    prefix: --match-score
- id: in_mismatch_penalty
  doc: INT    Penalty for a mismatch. [13]
  type: boolean?
  inputBinding:
    prefix: --mismatch-penalty
- id: in_deletion_penalty
  doc: INT    Deletions penalty. [7]
  type: boolean?
  inputBinding:
    prefix: --deletion-penalty
- id: in_insertion_penalty
  doc: INT    Insertion penalty. [7]
  type: boolean?
  inputBinding:
    prefix: --insertion-penalty
- id: in_branch_penalty
  doc: INT    Branch penalty. [4]
  type: boolean?
  inputBinding:
    prefix: --branch-penalty
- id: in_split
  doc: Split output by barcode pair.
  type: boolean?
  inputBinding:
    prefix: --split
- id: in_split_named
  doc: Split output by resolved barcode pair name.
  type: boolean?
  inputBinding:
    prefix: --split-named
- id: in_files_per_directory
  doc: "INT    Group maximum numbers of split barcode output files per directory;\
    \ 0 means\ndeactivated. [0]"
  type: boolean?
  inputBinding:
    prefix: --files-per-directory
- id: in_reuse_uuids
  doc: Use UUIDs from dataset XML input, must be used with output BAM splitting.
  type: boolean?
  inputBinding:
    prefix: --reuse-uuids
- id: in_output_handles
  doc: INT    Maximum number of open output files. [500]
  type: boolean?
  inputBinding:
    prefix: --output-handles
- id: in_dump_clips
  doc: Dump clipped regions in a separate output file <prefix>.lima.clips
  type: File?
  inputBinding:
    prefix: --dump-clips
- id: in_dump_removed
  doc: Dump removed records to <prefix>.lima.removed.SUFFIX
  type: boolean?
  inputBinding:
    prefix: --dump-removed
- id: in_no_output
  doc: Do not generate demultiplexed output.
  type: boolean?
  inputBinding:
    prefix: --no-output
- id: in_no_reports
  doc: Do not generate reports.
  type: boolean?
  inputBinding:
    prefix: --no-reports
- id: in_single_side
  doc: Assign single side barcodes by score clustering.
  type: boolean?
  inputBinding:
    prefix: --single-side
- id: in_scored_adapter_ratio
  doc: FLOAT  Minimum ratio of scored vs sequenced adapters. [0.25]
  type: boolean?
  inputBinding:
    prefix: --scored-adapter-ratio
- id: in_iso_seq
  doc: Activate specialized IsoSeq mode.
  type: boolean?
  inputBinding:
    prefix: --isoseq
- id: in_peek
  doc: "INT    Demux the first N ZMWs and return the mean score; 0 means peeking deactivated.\n\
    [0]"
  type: boolean?
  inputBinding:
    prefix: --peek
- id: in_guess
  doc: "INT    Try to guess the used barcodes, using the provided mean score threshold;\
    \ 0\nmeans guessing deactivated. [0]"
  type: boolean?
  inputBinding:
    prefix: --guess
- id: in_guess_min_count
  doc: INT    Minimum number of ZMWs observed to whitelist barcodes. [0]
  type: boolean?
  inputBinding:
    prefix: --guess-min-count
- id: in_peek_guess
  doc: "Try to infer the used barcodes subset, by peeking at the first 50,000 ZMWs,\n\
    whitelisting barcode pairs with more than 10 counts and mean score ≥ 45."
  type: boolean?
  inputBinding:
    prefix: --peek-guess
- id: in_ignore_bio_samples
  doc: Ignore <BioSamples> from XML input.
  type: boolean?
  inputBinding:
    prefix: --ignore-biosamples
- id: in_num_threads
  doc: INT    Number of threads to use, 0 means autodetection. [0]
  type: boolean?
  inputBinding:
    prefix: --num-threads
- id: in_log_level
  doc: 'STR    Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]'
  type: boolean?
  inputBinding:
    prefix: --log-level
- id: in_log_file
  doc: FILE   Log to a file, instead of stderr.
  type: boolean?
  inputBinding:
    prefix: --log-file
- id: in_barcodes_dot_fa
  doc: STR    Barcode FASTA or BarcodeSet XML
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_neighbors
  doc: Only output barcode pairs that are neighbors in barcode file.
  type: File?
  outputBinding:
    glob: $(inputs.in_neighbors)
- id: out_dump_clips
  doc: Dump clipped regions in a separate output file <prefix>.lima.clips
  type: File?
  outputBinding:
    glob: $(inputs.in_dump_clips)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/lima:2.0.0--0
cwlVersion: v1.1
baseCommand:
- lima
