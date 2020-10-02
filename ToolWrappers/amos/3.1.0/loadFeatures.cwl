class: CommandLineTool
id: loadFeatures.cwl
inputs:
- id: in_are_ungapped
  doc: are ungapped
  type: string
  inputBinding:
    prefix: -u
- id: in_is_the_iid
  doc: is the IID
  type: string
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- loadFeatures
