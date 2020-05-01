#!/usr/bin/env cwl-runner

baseCommand:
- barcode_splitter
class: CommandLineTool
cwlVersion: v1.0
id: barcode_splitter
inputs:
- doc: A series of 1 or more [optionally zipped] fastq files.
  id: file
  inputBinding:
    position: 0
  type: File
- doc: 'REQUIRED: Tab delimited file: "Sample_ID <tab> Barcode_Sequence" Multiple
    barcode columns with different barcode lengths allowed, but all barcodes in each
    inidividual column must be the same length.'
  id: bc_file
  inputBinding:
    prefix: --bcfile
  type: File
- doc: "REQUIRED: Indicate in which read file(s) to search for the corresponding column\
    \ of barcode sequences, e.g. if the first column of barcodes is in the second\
    \ sequence read file and the second column's barcodes are in the third sequence\
    \ read file, you'd supply `--idxread 2 3`"
  id: idx_read
  inputBinding:
    prefix: --idxread
  type:
    items: string
    type: array
- doc: Number of mismatches allowed in barcode matching
  id: mismatches
  inputBinding:
    prefix: --mismatches
  type: string
- doc: Barcodes are at the end of the index read (default is at the beginning)
  id: barcodes_at_end
  inputBinding:
    prefix: --barcodes_at_end
  type: boolean
- doc: Prefix for output files
  id: prefix
  inputBinding:
    prefix: --prefix
  type: string
- doc: Suffix for output files (default based on --format)
  id: suffix
  inputBinding:
    prefix: --suffix
  type: string
- doc: 'Produce "Galaxy safe" filenames by removing underscores (default: False)'
  id: galaxy
  inputBinding:
    prefix: --galaxy
  type: boolean
- doc: 'Do not produce "safe" filenames by replacing unusual characters in the supplied
    prefix and sample IDs with underscores. (default: False)'
  id: no_sanitize
  inputBinding:
    prefix: --nosanitize
  type: boolean
- doc: verbose output
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Output files in compressed gzip format (default is uncompressed)
  id: gzip_out
  inputBinding:
    prefix: --gzipout
  type: boolean
- doc: Split all input files, including index read files (by default, index read files
    are not split unless all read files are index files)
  id: split_all
  inputBinding:
    prefix: --split_all
  type: boolean
- doc: Specify format for sequence files (fasta or fastq)
  id: format
  inputBinding:
    prefix: --format
  type: string
- doc: Assume input files are in gzip format, despite file extension (default is auto
    based on input file extension)
  id: gzip_in
  inputBinding:
    prefix: --gzipin
  type: boolean
