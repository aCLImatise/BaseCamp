class: CommandLineTool
id: pybel_post_commons.scai.fraunhofer.de.cwl
inputs:
- id: in_py_bel
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_post
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_path
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pybel
- post
- commons.scai.fraunhofer.de
