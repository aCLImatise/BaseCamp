class: CommandLineTool
id: chembl_act.cwl
inputs:
- id: in_input
  doc: input file with names, one line each
  type: File
  inputBinding:
    prefix: --input
- id: in_output
  doc: "output file with ChEMBL IDs\n"
  type: File
  inputBinding:
    prefix: --output
- id: in_ch_embl_ids
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "output file with ChEMBL IDs\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- chembl_act
