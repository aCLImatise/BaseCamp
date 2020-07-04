class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/convert_bc_to_binary_RY.py.cwl
inputs:
- id: outfile
  doc: Write results to this file.
  type: string
  inputBinding:
    prefix: --outfile
- id: fast_a_format
  doc: Read and write fasta instead of fastq format.
  type: boolean
  inputBinding:
    prefix: --fasta-format
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
- id: in_file
  doc: Path to fastq input file.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- convert_bc_to_binary_RY.py
