#!/usr/bin/env cwl-runner

baseCommand:
- iu-demultiplex
class: CommandLineTool
cwlVersion: v1.0
id: iu-demultiplex
inputs:
- doc: TAB-delimited file of sample-barcode associations
  id: sample_barcode_mapping
  inputBinding:
    prefix: --sample-barcode-mapping
  type: File
- doc: FASTQ file for R1
  id: r1
  inputBinding:
    prefix: --r1
  type: string
- doc: FASTQ file for R2.
  id: r2
  inputBinding:
    prefix: --r2
  type: string
- doc: Index file (I1)
  id: index
  inputBinding:
    prefix: --index
  type: string
- doc: Reverse-complement barcodes before processing
  id: rev_comp_barcodes
  inputBinding:
    prefix: --rev-comp-barcodes
  type: boolean
- doc: Directory for output storage
  id: output_dir
  inputBinding:
    prefix: --output-dir
  type: Directory
