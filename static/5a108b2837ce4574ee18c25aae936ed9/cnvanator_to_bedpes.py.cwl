class: CommandLineTool
id: cnvanator_to_bedpes.py.cwl
inputs:
- id: in_cnv_calls
  doc: Output file from CNVanator
  type: File
  inputBinding:
    prefix: --cnv_calls
- id: in_cnv_kit
  doc: input is .cns file from cnvkit
  type: boolean
  inputBinding:
    prefix: --cnvkit
- id: in_del_o
  doc: Deletion output bedpe file name
  type: File
  inputBinding:
    prefix: --del_o
- id: in_dup_o
  doc: Duplication output bedpe file name
  type: File
  inputBinding:
    prefix: --dup_o
- id: in_breakpoint_size
  doc: "The total size of the resulting breakpoint, centered\non the call edge\n"
  type: long
  inputBinding:
    prefix: --breakpoint_size
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_cnv_calls
  doc: Output file from CNVanator
  type: File
  outputBinding:
    glob: $(inputs.in_cnv_calls)
- id: out_del_o
  doc: Deletion output bedpe file name
  type: File
  outputBinding:
    glob: $(inputs.in_del_o)
- id: out_dup_o
  doc: Duplication output bedpe file name
  type: File
  outputBinding:
    glob: $(inputs.in_dup_o)
cwlVersion: v1.1
baseCommand:
- cnvanator_to_bedpes.py
