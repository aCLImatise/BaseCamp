#!/usr/bin/env cwl-runner

baseCommand:
- extract_bcs.py
class: CommandLineTool
cwlVersion: v1.0
id: extract_bcs.py
inputs:
- doc: Path to fastq file.
  id: in_file
  inputBinding:
    position: 0
  type: string
- doc: Pattern of barcode nucleotides starting at 5'-end. X positions will be moved
    to the header, N positions will be kept.
  id: pattern
  inputBinding:
    position: 1
  type: string
- doc: Write results to this file.
  id: outfile
  inputBinding:
    prefix: --outfile
  type: string
- doc: Write barcodes to this file in FASTQ format.
  id: bcs
  inputBinding:
    prefix: --bcs
  type: string
- doc: Save extracted barcodes in FASTA format.
  id: fast_a_barcodes
  inputBinding:
    prefix: --fasta-barcodes
  type: boolean
- doc: Append extracted barcodes to the FASTQ headers.
  id: add_bc_to_fast_q
  inputBinding:
    prefix: --add-bc-to-fastq
  type: boolean
- doc: Be verbose.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Print lots of debugging information
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
