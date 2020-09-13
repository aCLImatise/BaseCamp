class: CommandLineTool
id: ../../../nanopore_transcript_abundance.py.cwl
inputs:
- id: in_input
  doc: ''
  type: string
  inputBinding:
    prefix: --input
- id: in_compatibility
  doc: ''
  type: string
  inputBinding:
    prefix: --compatibility
- id: in_em_iterations
  doc: ''
  type: string
  inputBinding:
    prefix: --em-iterations
- id: in_verbose
  doc: ''
  type: string
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nanopore_transcript_abundance.py
