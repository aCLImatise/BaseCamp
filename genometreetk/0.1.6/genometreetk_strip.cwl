class: CommandLineTool
id: ../../../genometreetk_strip.cwl
inputs:
- id: in_silent
  doc: suppress output
  type: boolean
  inputBinding:
    prefix: --silent
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- genometreetk
- strip
