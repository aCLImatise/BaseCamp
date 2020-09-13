class: CommandLineTool
id: ../../../checkm_tetra.cwl
inputs:
- id: in_threads
  doc: 'number of threads (default: 1)'
  type: long
  inputBinding:
    prefix: --threads
- id: in_quiet
  doc: suppress console output
  type: boolean
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- checkm
- tetra
