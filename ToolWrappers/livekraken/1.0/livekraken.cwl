class: CommandLineTool
id: livekraken.cwl
inputs:
- id: in_db
  doc: "Name for Kraken DB\n(default: none)"
  type: string?
  inputBinding:
    prefix: --db
- id: in_threads
  doc: 'Number of threads (default: 1)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_fast_a_input
  doc: Input is FASTA format
  type: boolean?
  inputBinding:
    prefix: --fasta-input
- id: in_fast_q_input
  doc: Input is FASTQ format
  type: boolean?
  inputBinding:
    prefix: --fastq-input
- id: in_bcl_input
  doc: Input is BCL format
  type: boolean?
  inputBinding:
    prefix: --bcl-input
- id: in_bcl_length
  doc: Number of sequencing cycles
  type: long?
  inputBinding:
    prefix: --bcl-length
- id: in_bcl_start
  doc: First analysis cycle (>31)
  type: long?
  inputBinding:
    prefix: --bcl-start
- id: in_bcl_spacing
  doc: Spacing between classification
  type: long?
  inputBinding:
    prefix: --bcl-spacing
- id: in_bcl_lanes
  doc: "lanes to analyse (e.g. 1 3 4)\nDefault: Analyse all lanes found."
  type: string[]
  inputBinding:
    prefix: --bcl-lanes
- id: in_bcl_tiles
  doc: "tiles to analyse (e.g. 1101 2115 2304)\nDefault: 96 tiles (2 sides -> 3 swaths\
    \ -> 16 tiles)."
  type: string[]
  inputBinding:
    prefix: --bcl-tiles
- id: in_bcl_max_tile
  doc: "Maximum tile to analyse, in XYZZ tile format.\nDefault: Up to tile 2316 (for\
    \ 96 tiles.)\nIf this option is used, --bcl-tiles is ignored."
  type: long?
  inputBinding:
    prefix: --bcl-max-tile
- id: in_gzip_compressed
  doc: Input is gzip compressed
  type: boolean?
  inputBinding:
    prefix: --gzip-compressed
- id: in_bzip_two_compressed
  doc: Input is bzip2 compressed
  type: boolean?
  inputBinding:
    prefix: --bzip2-compressed
- id: in_quick
  doc: Quick operation (use first hit or hits)
  type: boolean?
  inputBinding:
    prefix: --quick
- id: in_min_hits
  doc: "In quick op., number of hits req'd for classification\nNOTE: this is ignored\
    \ if --quick is not specified"
  type: long?
  inputBinding:
    prefix: --min-hits
- id: in_unclassified_out
  doc: Print unclassified sequences to filename
  type: File?
  inputBinding:
    prefix: --unclassified-out
- id: in_classified_out
  doc: Print classified sequences to filename
  type: File?
  inputBinding:
    prefix: --classified-out
- id: in_output
  doc: "Print output to filename (default: stdout); \"-\" will\nsuppress normal output"
  type: File?
  inputBinding:
    prefix: --output
- id: in_only_classified_output
  doc: Print no Kraken output for unclassified sequences
  type: boolean?
  inputBinding:
    prefix: --only-classified-output
- id: in_preload
  doc: Loads DB into memory before classification
  type: boolean?
  inputBinding:
    prefix: --preload
- id: in_paired
  doc: The two filenames provided are paired-end reads
  type: boolean?
  inputBinding:
    prefix: --paired
- id: in_check_names
  doc: "Ensure each pair of reads have names that agree\nwith each other; ignored\
    \ if --paired is not specified"
  type: boolean?
  inputBinding:
    prefix: --check-names
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Print output to filename (default: stdout); \"-\" will\nsuppress normal output"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- livekraken
