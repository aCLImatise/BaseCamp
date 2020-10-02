class: CommandLineTool
id: pauda_build.cwl
inputs:
- id: in_references_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_p_aud_a_index_directory
  doc: ''
  type: Directory
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pauda-build
