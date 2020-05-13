class: CommandLineTool
id: livekraken.cwl
inputs:
- id: db
  doc: 'Name for Kraken DB (default: none)'
  type: string
  inputBinding:
    prefix: --db
- id: threads
  doc: 'Number of threads (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
- id: fast_a_input
  doc: Input is FASTA format
  type: boolean
  inputBinding:
    prefix: --fasta-input
- id: fast_q_input
  doc: Input is FASTQ format
  type: boolean
  inputBinding:
    prefix: --fastq-input
- id: bcl_input
  doc: Input is BCL format
  type: boolean
  inputBinding:
    prefix: --bcl-input
- id: bcl_length
  doc: Number of sequencing cycles
  type: string
  inputBinding:
    prefix: --bcl-length
- id: bcl_start
  doc: First analysis cycle (>31)
  type: string
  inputBinding:
    prefix: --bcl-start
- id: bcl_spacing
  doc: Spacing between classification
  type: string
  inputBinding:
    prefix: --bcl-spacing
- id: bcl_lanes
  doc: 'NUM ..  The lanes to analyse (e.g. 1 3 4) Default: Analyse all lanes found.'
  type: string
  inputBinding:
    prefix: --bcl-lanes
- id: bcl_tiles
  doc: 'NUM ..  The tiles to analyse (e.g. 1101 2115 2304) Default: 96 tiles (2 sides
    -> 3 swaths -> 16 tiles).'
  type: string
  inputBinding:
    prefix: --bcl-tiles
- id: bcl_max_tile
  doc: 'Maximum tile to analyse, in XYZZ tile format. Default: Up to tile 2316 (for
    96 tiles.) If this option is used, --bcl-tiles is ignored.'
  type: string
  inputBinding:
    prefix: --bcl-max-tile
- id: gzip_compressed
  doc: Input is gzip compressed
  type: boolean
  inputBinding:
    prefix: --gzip-compressed
- id: bzip2_compressed
  doc: Input is bzip2 compressed
  type: boolean
  inputBinding:
    prefix: --bzip2-compressed
- id: quick
  doc: Quick operation (use first hit or hits)
  type: boolean
  inputBinding:
    prefix: --quick
- id: min_hits
  doc: "In quick op., number of hits req'd for classification NOTE: this is ignored\
    \ if --quick is not specified"
  type: string
  inputBinding:
    prefix: --min-hits
- id: unclassified_out
  doc: Print unclassified sequences to filename
  type: File
  inputBinding:
    prefix: --unclassified-out
- id: classified_out
  doc: Print classified sequences to filename
  type: File
  inputBinding:
    prefix: --classified-out
- id: output
  doc: 'Print output to filename (default: stdout); "-" will suppress normal output'
  type: File
  inputBinding:
    prefix: --output
- id: only_classified_output
  doc: Print no Kraken output for unclassified sequences
  type: boolean
  inputBinding:
    prefix: --only-classified-output
- id: preload
  doc: Loads DB into memory before classification
  type: boolean
  inputBinding:
    prefix: --preload
- id: paired
  doc: The two filenames provided are paired-end reads
  type: boolean
  inputBinding:
    prefix: --paired
- id: check_names
  doc: Ensure each pair of reads have names that agree with each other; ignored if
    --paired is not specified
  type: boolean
  inputBinding:
    prefix: --check-names
outputs: []
cwlVersion: v1.1
baseCommand:
- livekraken
