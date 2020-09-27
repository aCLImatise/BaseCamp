class: CommandLineTool
id: lima.cwl
inputs:
- id: in_same
  doc: "Only keep same barcodes in a pair in\nBAM output."
  type: boolean
  inputBinding:
    prefix: --same
- id: in_different
  doc: "Only keep different barcodes in a pair\nin BAM output. Enforces --min-passes\n\
    ≥ 1."
  type: boolean
  inputBinding:
    prefix: --different
- id: in_neighbors
  doc: "Only output barcode pairs that are\nneighbors in barcode file."
  type: File
  inputBinding:
    prefix: --neighbors
- id: in_per_read
  doc: Do not tag per ZMW, but per read.
  type: boolean
  inputBinding:
    prefix: --per-read
- id: in_score_full_pass
  doc: "Only use subreads flanked by adapters\nfor barcode identification."
  type: boolean
  inputBinding:
    prefix: --score-full-pass
- id: in_max_scored_barcode_pairs
  doc: "INT    Only use up to N barcode pair regions\nto find the barcode, 0 means\
    \ use all.\n[0]"
  type: boolean
  inputBinding:
    prefix: --max-scored-barcode-pairs
- id: in_max_scored_barcodes
  doc: "INT    Analyze at maximum the provided number\nof barcodes per ZMW; 0 means\n\
    deactivated. [0]"
  type: boolean
  inputBinding:
    prefix: --max-scored-barcodes
- id: in_max_scored_adapters
  doc: "INT    Analyze at maximum the provided number\nof adapters per ZMW; 0 means\n\
    deactivated. [0]"
  type: boolean
  inputBinding:
    prefix: --max-scored-adapters
- id: in_min_passes
  doc: INT    Minimal number of full passes. [0]
  type: boolean
  inputBinding:
    prefix: --min-passes
- id: in_min_length
  doc: "INT    Minimum sequence length after clipping.\n[50]"
  type: boolean
  inputBinding:
    prefix: --min-length
- id: in_max_input_length
  doc: "INT    Maximum input sequence length, 0 means\ndeactivated. [0]"
  type: boolean
  inputBinding:
    prefix: --max-input-length
- id: in_bad_adapter_ratio
  doc: FLOAT  Maximum ratio of bad adapter. [0]
  type: boolean
  inputBinding:
    prefix: --bad-adapter-ratio
- id: in_shared_prefix
  doc: Barcodes may be substrings of others.
  type: boolean
  inputBinding:
    prefix: --shared-prefix
- id: in_window_size_multi
  doc: "FLOAT  The candidate region size multiplier:\nbarcode_length * multiplier.\
    \ [3]"
  type: boolean
  inputBinding:
    prefix: --window-size-multi
- id: in_window_size
  doc: "INT    The candidate region size in bp. If\nset, --window-size-mult will be\n\
    ignored. [0]"
  type: boolean
  inputBinding:
    prefix: --window-size
- id: in_min_ref_span
  doc: "FLOAT  Minimum reference span relative to the\nbarcode length. [0.5]"
  type: boolean
  inputBinding:
    prefix: --min-ref-span
- id: in_min_scoring_regions
  doc: "INT    Minimum number of barcode regions with\nsufficient relative span to\
    \ the barcode\nlength. [1]"
  type: boolean
  inputBinding:
    prefix: --min-scoring-regions
- id: in_min_score
  doc: "INT    Reads below the minimum barcode score\nare removed from downstream\
    \ analysis.\n[0]"
  type: boolean
  inputBinding:
    prefix: --min-score
- id: in_min_end_score
  doc: "INT    Minimum end barcode score threshold is\napplied to the individual leading\
    \ and\ntrailing ends. [0]"
  type: boolean
  inputBinding:
    prefix: --min-end-score
- id: in_min_signal_increase
  doc: "INT    The minimal score difference, between\nfirst and combined, required\
    \ to call a\nbarcode pair different. [10]"
  type: boolean
  inputBinding:
    prefix: --min-signal-increase
- id: in_min_score_lead
  doc: "INT    The minimal score lead required to call\na barcode pair significant.\
    \ [10]"
  type: boolean
  inputBinding:
    prefix: --min-score-lead
- id: in_keep_tag_idx_order
  doc: "Keep identified order of barcode pair\nindices in BC tag; CCS only."
  type: boolean
  inputBinding:
    prefix: --keep-tag-idx-order
- id: in_keep_split_idx_order
  doc: "Keep identified order of barcode pair\nindices in split BAM names; CCS only."
  type: boolean
  inputBinding:
    prefix: --keep-split-idx-order
- id: in_ccs
  doc: "CCS mode, use optimal alignment options\n-A 1 -B 4 -D 3 -I 3 -X 4."
  type: boolean
  inputBinding:
    prefix: --ccs
- id: in_match_score
  doc: "INT    Score for a sequence match. [4]\n-B,--mismatch-penalty          INT\
    \    Penalty for a mismatch. [13]\n-D,--deletion-penalty          INT    Deletions\
    \ penalty. [7]\n-I,--insertion-penalty         INT    Insertion penalty. [7]\n\
    -X,--branch-penalty            INT    Branch penalty. [4]"
  type: boolean
  inputBinding:
    prefix: --match-score
- id: in_split_bam
  doc: Split BAM output by barcode pair.
  type: boolean
  inputBinding:
    prefix: --split-bam
- id: in_split_bam_named
  doc: "Split BAM output by resolved barcode\npair name."
  type: boolean
  inputBinding:
    prefix: --split-bam-named
- id: in_files_per_directory
  doc: "INT    Group maximum numbers of split barcode\noutput files per directory;\
    \ 0 means\ndeactivated. [0]"
  type: boolean
  inputBinding:
    prefix: --files-per-directory
- id: in_reuse_uuids
  doc: "Use UUIDs from dataset XML input, must\nbe used with output BAM splitting."
  type: boolean
  inputBinding:
    prefix: --reuse-uuids
- id: in_bam_handles
  doc: INT    Maximum number of open BAM files. [500]
  type: boolean
  inputBinding:
    prefix: --bam-handles
- id: in_dump_clips
  doc: "Dump clipped regions in a separate\noutput file <prefix>.lima.clips"
  type: File
  inputBinding:
    prefix: --dump-clips
- id: in_dump_removed
  doc: "Dump removed records to\n<prefix>.lima.removed.bam."
  type: boolean
  inputBinding:
    prefix: --dump-removed
- id: in_no_bam
  doc: Do not generate BAM output.
  type: boolean
  inputBinding:
    prefix: --no-bam
- id: in_no_reports
  doc: Do not generate reports.
  type: boolean
  inputBinding:
    prefix: --no-reports
- id: in_single_side
  doc: Assign single side barcodes by score
  type: boolean
  inputBinding:
    prefix: --single-side
- id: in_iso_seq
  doc: Activate specialized IsoSeq mode.
  type: boolean
  inputBinding:
    prefix: --isoseq
- id: in_peek
  doc: "INT    Demux the first N ZMWs and return the\nmean score; 0 means peeking\n\
    deactivated. [0]"
  type: boolean
  inputBinding:
    prefix: --peek
- id: in_guess
  doc: "INT    Try to guess the used barcodes, using\nthe provided mean score threshold;\
    \ 0\nmeans guessing deactivated. [0]"
  type: boolean
  inputBinding:
    prefix: --guess
- id: in_guess_min_count
  doc: "INT    Minimum number of ZMWs observed to\nwhitelist barcodes. [0]"
  type: boolean
  inputBinding:
    prefix: --guess-min-count
- id: in_peek_guess
  doc: "Try to infer the used barcodes subset,\nby peeking at the first 50,000 ZMWs,\n\
    whitelisting barcode pairs with more\nthan 10 counts and mean score ≥ 45."
  type: boolean
  inputBinding:
    prefix: --peek-guess
- id: in_ignore_bio_samples
  doc: Ignore <BioSamples> from XML input.
  type: boolean
  inputBinding:
    prefix: --ignore-biosamples
- id: in_num_threads
  doc: "INT    Number of threads to use, 0 means\nautodetection. [0]"
  type: boolean
  inputBinding:
    prefix: --num-threads
- id: in_log_level
  doc: "STR    Set log level. Valid choices: (TRACE,\nDEBUG, INFO, WARN, FATAL). [WARN]"
  type: boolean
  inputBinding:
    prefix: --log-level
- id: in_log_file
  doc: FILE   Log to a file, instead of stderr.
  type: boolean
  inputBinding:
    prefix: --log-file
- id: in_input
  doc: STR    Source BAM or DATASET
  type: string
  inputBinding:
    position: 0
- id: in_barcodes
  doc: STR    FASTA or BARCODESET file
  type: string
  inputBinding:
    position: 1
- id: in_output
  doc: STR    Output BAM or DATASET file
  type: string
  inputBinding:
    position: 2
- id: in_clustering_dot
  doc: --scored-adapter-ratio         FLOAT  Minimum ratio of scored vs sequenced
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_neighbors
  doc: "Only output barcode pairs that are\nneighbors in barcode file."
  type: File
  outputBinding:
    glob: $(inputs.in_neighbors)
- id: out_dump_clips
  doc: "Dump clipped regions in a separate\noutput file <prefix>.lima.clips"
  type: File
  outputBinding:
    glob: $(inputs.in_dump_clips)
cwlVersion: v1.1
baseCommand:
- lima
