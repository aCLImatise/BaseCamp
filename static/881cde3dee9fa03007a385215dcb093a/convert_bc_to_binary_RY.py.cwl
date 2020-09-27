class: CommandLineTool
id: convert_bc_to_binary_RY.py.cwl
inputs:
- id: in_outfile
  doc: Write results to this file.
  type: File
  inputBinding:
    prefix: --outfile
- id: in_fast_a_format
  doc: Read and write fasta instead of fastq format.
  type: boolean
  inputBinding:
    prefix: --fasta-format
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
  doc: Path to fastq input file.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- convert_bc_to_binary_RY.py
