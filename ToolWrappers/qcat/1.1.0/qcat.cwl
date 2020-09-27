class: CommandLineTool
id: qcat.cwl
inputs:
- id: in_log
  doc: Print debug information
  type: string
  inputBinding:
    prefix: --log
- id: in_quiet
  doc: Don't print summary
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_fast_q
  doc: Barcoded read file
  type: File
  inputBinding:
    prefix: --fastq
- id: in_barcode_dir
  doc: "If specified, qcat will demultiplex reads to this\nfolder"
  type: Directory
  inputBinding:
    prefix: --barcode_dir
- id: in_output
  doc: "Output file trimmed reads will be written to (default:\nstdout)."
  type: File
  inputBinding:
    prefix: --output
- id: in_min_score
  doc: "Minimum barcode score. Barcode calls with a lower\nscore will be discarded.\
    \ Must be between 0 and 100.\n(default: 60)"
  type: long
  inputBinding:
    prefix: --min-score
- id: in_detect_middle
  doc: Search for adapters in the whole read
  type: boolean
  inputBinding:
    prefix: --detect-middle
- id: in_threads
  doc: Number of threads. Only works with in guppy mode
  type: long
  inputBinding:
    prefix: --threads
- id: in_min_read_length
  doc: "Reads short than <min-read-length> after trimming will\nbe discarded."
  type: long
  inputBinding:
    prefix: --min-read-length
- id: in_tsv
  doc: "Prints a tsv file containing barcode information each\nread to stdout."
  type: boolean
  inputBinding:
    prefix: --tsv
- id: in_trim
  doc: Remove adapter and barcode sequences from reads.
  type: boolean
  inputBinding:
    prefix: --trim
- id: in_kit
  doc: "Sequencing kit. Specifying the correct kit will\nimprove sensitivity and specificity\
    \ and runtime\n(default: auto)"
  type: string
  inputBinding:
    prefix: --kit
- id: in_list_kits
  doc: List all supported kits
  type: boolean
  inputBinding:
    prefix: --list-kits
- id: in_guppy
  doc: "Use Guppy's demultiplexing algorithm (default: false)"
  type: boolean
  inputBinding:
    prefix: --guppy
- id: in_epi_two_me
  doc: "Use EPI2ME's demultiplexing algorithm (default: true)"
  type: boolean
  inputBinding:
    prefix: --epi2me
- id: in_dual
  doc: Use dual barcoding algorithm
  type: boolean
  inputBinding:
    prefix: --dual
- id: in_simple
  doc: "Use simple demultiplexing algorithm. Only looks for\nbarcodes, not for adapter\
    \ sequences. Use only for\ntesting purposes!"
  type: boolean
  inputBinding:
    prefix: --simple
- id: in_no_batch
  doc: "Don't use information from multiple reads for kit\ndetection (default: false)"
  type: boolean
  inputBinding:
    prefix: --no-batch
- id: in_filter_barcodes
  doc: Filter rare barcode calls when run in batch mode
  type: boolean
  inputBinding:
    prefix: --filter-barcodes
- id: in_simple_barcodes
  doc: "Use 12 (standard) or 96 (extended) barcodes for\ndemultiplexing\n"
  type: long
  inputBinding:
    prefix: --simple-barcodes
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -V
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output file trimmed reads will be written to (default:\nstdout)."
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- qcat
