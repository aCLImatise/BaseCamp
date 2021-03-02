class: CommandLineTool
id: barcode_splitter.cwl
inputs:
- id: in_bc_file
  doc: "REQUIRED: Tab delimited file: \"Sample_ID <tab>\nBarcode_Sequence\" Multiple\
    \ barcode columns with\ndifferent barcode lengths allowed, but all barcodes in\n\
    each inidividual column must be the same length."
  type: File?
  inputBinding:
    prefix: --bcfile
- id: in_idx_read
  doc: "REQUIRED: Indicate in which read file(s) to search for\nthe corresponding\
    \ column of barcode sequences, e.g. if\nthe first column of barcodes is in the\
    \ second sequence\nread file and the second column's barcodes are in the\nthird\
    \ sequence read file, you'd supply `--idxread 2 3`"
  type: long[]
  inputBinding:
    prefix: --idxread
- id: in_mismatches
  doc: Number of mismatches allowed in barcode matching
  type: long?
  inputBinding:
    prefix: --mismatches
- id: in_barcodes_at_end
  doc: "Barcodes are at the end of the index read (default is\nat the beginning)"
  type: boolean?
  inputBinding:
    prefix: --barcodes_at_end
- id: in_prefix
  doc: Prefix for output files
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_suffix
  doc: Suffix for output files (default based on --format)
  type: string?
  inputBinding:
    prefix: --suffix
- id: in_galaxy
  doc: "Produce \"Galaxy safe\" filenames by removing\nunderscores (default: False)"
  type: boolean?
  inputBinding:
    prefix: --galaxy
- id: in_no_sanitize
  doc: "Do not produce \"safe\" filenames by replacing unusual\ncharacters in the\
    \ supplied prefix and sample IDs with\nunderscores. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --nosanitize
- id: in_verbose
  doc: verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_gzip_out
  doc: "Output files in compressed gzip format (default is\nuncompressed)"
  type: boolean?
  inputBinding:
    prefix: --gzipout
- id: in_split_all
  doc: "Split all input files, including index read files (by\ndefault, index read\
    \ files are not split unless all\nread files are index files)"
  type: boolean?
  inputBinding:
    prefix: --split_all
- id: in_format
  doc: Specify format for sequence files (fasta or fastq)
  type: string?
  inputBinding:
    prefix: --format
- id: in_gzip_in
  doc: "Assume input files are in gzip format, despite file\nextension (default is\
    \ auto based on input file\nextension)"
  type: boolean?
  inputBinding:
    prefix: --gzipin
- id: in_file
  doc: A series of 1 or more [optionally zipped] fastq files.
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- barcode_splitter
