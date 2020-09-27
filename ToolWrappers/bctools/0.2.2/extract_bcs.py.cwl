class: CommandLineTool
id: extract_bcs.py.cwl
inputs:
- id: in_outfile
  doc: Write results to this file.
  type: File
  inputBinding:
    prefix: --outfile
- id: in_bcs
  doc: Write barcodes to this file in FASTQ format.
  type: File
  inputBinding:
    prefix: --bcs
- id: in_fast_a_barcodes
  doc: Save extracted barcodes in FASTA format.
  type: boolean
  inputBinding:
    prefix: --fasta-barcodes
- id: in_add_bc_to_fast_q
  doc: Append extracted barcodes to the FASTQ headers.
  type: boolean
  inputBinding:
    prefix: --add-bc-to-fastq
- id: in_verbose
  doc: Be verbose.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: Print lots of debugging information
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_in_file
  doc: Path to fastq file.
  type: string
  inputBinding:
    position: 0
- id: in_pattern
  doc: "Pattern of barcode nucleotides starting at 5'-end. X\npositions will be moved\
    \ to the header, N positions\nwill be kept."
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- extract_bcs.py
