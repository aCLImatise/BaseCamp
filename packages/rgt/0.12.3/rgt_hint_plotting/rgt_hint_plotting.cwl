class: CommandLineTool
id: rgt_hint_plotting.cwl
inputs:
- id: in_reads_file
  doc: ''
  type: File
  inputBinding:
    prefix: --reads-file
- id: in_organism
  doc: ''
  type: string
  inputBinding:
    prefix: --organism
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rgt-hint
- plotting
