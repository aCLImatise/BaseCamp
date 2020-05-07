class: CommandLineTool
id: readucks.cwl
inputs:
- id: input
  doc: FASTQ of input reads or a directory which will be recursively searched for
    FASTQ files (required).
  type: string
  inputBinding:
    prefix: --input
- id: output_dir
  doc: 'Output directory (default: working directory)'
  type: string
  inputBinding:
    prefix: --output_dir
- id: bin_barcodes
  doc: 'Reads will be binned based on their barcode and saved to separate files. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --bin_barcodes
- id: annotate_files
  doc: 'Writes a CSV file for each input file containing barcode calls for each read.
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --annotate_files
- id: extended_info
  doc: 'Writes extended information about barcode calls. (default: False)'
  type: boolean
  inputBinding:
    prefix: --extended_info
- id: summary_info
  doc: 'Writes another file with information about barcode calls. (default: False)'
  type: boolean
  inputBinding:
    prefix: --summary_info
- id: mode
  doc: 'Demuxing mode, one of ["stringent","lenient", "porechop"]. (default: porechop)'
  type: string
  inputBinding:
    prefix: --mode
- id: prefix
  doc: Optional prefix to file names
  type: string
  inputBinding:
    prefix: --prefix
- id: threads
  doc: 'The number of threads to use (1 to turn off multithreading) (default: 2)'
  type: string
  inputBinding:
    prefix: --threads
- id: num_reads_in_batch
  doc: 'The number of reads to process (and hold in memory) at a time (default: 200)'
  type: string
  inputBinding:
    prefix: --num_reads_in_batch
- id: check_reads
  doc: 'Number of barcodes to classify before filtering barcode set (default: 1000)'
  type: string
  inputBinding:
    prefix: --check_reads
- id: adapter_threshold
  doc: 'Identity required for a barcode to be included after filtering (default: 90)'
  type: string
  inputBinding:
    prefix: --adapter_threshold
- id: verbosity
  doc: 'Level of output information: 0 = none, 1 = some, 2 = lots (default: 1)'
  type: string
  inputBinding:
    prefix: --verbosity
- id: require_two_barcodes
  doc: Match barcodes at both ends of read (default single)
  type: boolean
  inputBinding:
    prefix: --require_two_barcodes
- id: native_barcodes
  doc: Only attempts to match the 24 native barcodes (default)
  type: boolean
  inputBinding:
    prefix: --native_barcodes
- id: pcr_barcodes
  doc: 'Only attempts to match the 96 PCR barcodes (default: False)'
  type: boolean
  inputBinding:
    prefix: --pcr_barcodes
- id: rapid_barcodes
  doc: 'Only attempts to match the 12 rapid barcodes (default: False)'
  type: boolean
  inputBinding:
    prefix: --rapid_barcodes
- id: limit_barcodes_to
  doc: Specify a list of barcodes to look for (numbers refer to native, PCR or rapid)
  type: string[]
  inputBinding:
    prefix: --limit_barcodes_to
- id: threshold
  doc: 'A read must have at least this percent identity to a barcode (default: 75)'
  type: string
  inputBinding:
    prefix: --threshold
- id: secondary_threshold
  doc: 'The second barcode must have at least this percent identity (and match the
    first one) (default: 65)'
  type: string
  inputBinding:
    prefix: --secondary_threshold
- id: score_diff
  doc: 'The second barcode must have at least this percent identity (and match the
    first one) (default: 5)'
  type: string
  inputBinding:
    prefix: --score_diff
- id: scoring_scheme
  doc: 'Comma-delimited string of alignment scores: match, mismatch, gap open, gap
    extend (default: 3,-6,-5,-2)'
  type: string
  inputBinding:
    prefix: --scoring_scheme
outputs: []
cwlVersion: v1.1
baseCommand:
- readucks
