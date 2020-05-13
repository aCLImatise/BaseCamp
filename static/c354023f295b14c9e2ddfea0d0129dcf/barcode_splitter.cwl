class: CommandLineTool
id: barcode_splitter.cwl
inputs:
- id: file
  doc: A series of 1 or more [optionally zipped] fastq files.
  type: File
  inputBinding:
    position: 0
- id: bc_file
  doc: 'REQUIRED: Tab delimited file: "Sample_ID <tab> Barcode_Sequence" Multiple
    barcode columns with different barcode lengths allowed, but all barcodes in each
    inidividual column must be the same length.'
  type: File
  inputBinding:
    prefix: --bcfile
- id: idx_read
  doc: "REQUIRED: Indicate in which read file(s) to search for the corresponding column\
    \ of barcode sequences, e.g. if the first column of barcodes is in the second\
    \ sequence read file and the second column's barcodes are in the third sequence\
    \ read file, you'd supply `--idxread 2 3`"
  type: string[]
  inputBinding:
    prefix: --idxread
- id: mismatches
  doc: Number of mismatches allowed in barcode matching
  type: string
  inputBinding:
    prefix: --mismatches
- id: barcodes_at_end
  doc: Barcodes are at the end of the index read (default is at the beginning)
  type: boolean
  inputBinding:
    prefix: --barcodes_at_end
- id: prefix
  doc: Prefix for output files
  type: string
  inputBinding:
    prefix: --prefix
- id: suffix
  doc: Suffix for output files (default based on --format)
  type: string
  inputBinding:
    prefix: --suffix
- id: galaxy
  doc: 'Produce "Galaxy safe" filenames by removing underscores (default: False)'
  type: boolean
  inputBinding:
    prefix: --galaxy
- id: no_sanitize
  doc: 'Do not produce "safe" filenames by replacing unusual characters in the supplied
    prefix and sample IDs with underscores. (default: False)'
  type: boolean
  inputBinding:
    prefix: --nosanitize
- id: verbose
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: gzip_out
  doc: Output files in compressed gzip format (default is uncompressed)
  type: boolean
  inputBinding:
    prefix: --gzipout
- id: split_all
  doc: Split all input files, including index read files (by default, index read files
    are not split unless all read files are index files)
  type: boolean
  inputBinding:
    prefix: --split_all
- id: format
  doc: Specify format for sequence files (fasta or fastq)
  type: string
  inputBinding:
    prefix: --format
- id: gzip_in
  doc: Assume input files are in gzip format, despite file extension (default is auto
    based on input file extension)
  type: boolean
  inputBinding:
    prefix: --gzipin
outputs: []
cwlVersion: v1.1
baseCommand:
- barcode_splitter
