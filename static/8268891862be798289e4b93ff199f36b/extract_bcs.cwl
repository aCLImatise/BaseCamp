class: CommandLineTool
id: extract_bcs.py.cwl
inputs:
- id: in_file
  doc: Path to fastq file.
  type: string
  inputBinding:
    position: 0
- id: pattern
  doc: Pattern of barcode nucleotides starting at 5'-end. X positions will be moved
    to the header, N positions will be kept.
  type: string
  inputBinding:
    position: 1
- id: outfile
  doc: Write results to this file.
  type: string
  inputBinding:
    prefix: --outfile
- id: bcs
  doc: Write barcodes to this file in FASTQ format.
  type: string
  inputBinding:
    prefix: --bcs
- id: fast_a_barcodes
  doc: Save extracted barcodes in FASTA format.
  type: boolean
  inputBinding:
    prefix: --fasta-barcodes
- id: add_bc_to_fast_q
  doc: Append extracted barcodes to the FASTQ headers.
  type: boolean
  inputBinding:
    prefix: --add-bc-to-fastq
- id: verbose
  doc: Be verbose.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: debug
  doc: Print lots of debugging information
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- extract_bcs.py
