class: CommandLineTool
id: rbt_oncoprint.cwl
inputs:
- id: in_vep_annotation
  doc: Annotation field gets parsed as definded by VEP.
  type: boolean?
  inputBinding:
    prefix: --vep-annotation
- id: in_flags
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rbt
- oncoprint
