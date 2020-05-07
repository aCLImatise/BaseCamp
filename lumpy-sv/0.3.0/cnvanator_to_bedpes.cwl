class: CommandLineTool
id: cnvanator_to_bedpes.py.cwl
inputs:
- id: cnv_calls
  doc: Output file from CNVanator
  type: string
  inputBinding:
    prefix: --cnv_calls
- id: cnv_kit
  doc: input is .cns file from cnvkit
  type: boolean
  inputBinding:
    prefix: --cnvkit
- id: del_o
  doc: Deletion output bedpe file name
  type: string
  inputBinding:
    prefix: --del_o
- id: dup_o
  doc: Duplication output bedpe file name
  type: string
  inputBinding:
    prefix: --dup_o
- id: breakpoint_size
  doc: The total size of the resulting breakpoint, centered on the call edge
  type: string
  inputBinding:
    prefix: --breakpoint_size
outputs: []
cwlVersion: v1.1
baseCommand:
- cnvanator_to_bedpes.py
