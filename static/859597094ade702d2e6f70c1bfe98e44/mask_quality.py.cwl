class: CommandLineTool
id: mask_quality.py.cwl
inputs:
- id: in_format_input_axt
  doc: Format of input (axt or maf)
  type: string?
  inputBinding:
    prefix: --input
- id: in_format_output_axt
  doc: Format of output (axt or maf)
  type: string?
  inputBinding:
    prefix: --output
- id: in_mask
  doc: Character to use as mask character
  type: string?
  inputBinding:
    prefix: --mask
- id: in_quality
  doc: Min quality allowed
  type: long?
  inputBinding:
    prefix: --quality
- id: in_type
  doc: base_pair or nqs
  type: string?
  inputBinding:
    prefix: --type
- id: in_list
  doc: "colon seperated list of\nspecies,len_file[,qualityfile].\n"
  type: string?
  inputBinding:
    prefix: --list
- id: in_var_6
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_7
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mask_quality.py
