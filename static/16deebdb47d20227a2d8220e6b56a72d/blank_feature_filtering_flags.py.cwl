class: CommandLineTool
id: blank_feature_filtering_flags.py.cwl
inputs:
- id: in_input
  doc: Input dataset in wide format.
  type: string?
  inputBinding:
    prefix: --input
- id: in_design
  doc: Design file.
  type: File?
  inputBinding:
    prefix: --design
- id: in_uniqid
  doc: Name of the column with uniquedentifiers.
  type: string?
  inputBinding:
    prefix: --uniqID
- id: in_group
  doc: "Name of column in design filewith Group/treatment\ninformation."
  type: string?
  inputBinding:
    prefix: --group
- id: in_bff
  doc: Default BFF value [default 5000]
  type: long?
  inputBinding:
    prefix: --bff
- id: in_blank
  doc: name of the column with the blanks
  type: string?
  inputBinding:
    prefix: --blank
- id: in_criteria
  doc: Value of the criteria to selct
  type: string?
  inputBinding:
    prefix: --criteria
- id: in_out_flags
  doc: Output path for flags file[CSV]
  type: File?
  inputBinding:
    prefix: --outflags
- id: in_out_bff
  doc: "Output path for bff file[CSV]\n"
  type: File?
  inputBinding:
    prefix: --outbff
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_flags
  doc: Output path for flags file[CSV]
  type: File?
  outputBinding:
    glob: $(inputs.in_out_flags)
- id: out_out_bff
  doc: "Output path for bff file[CSV]\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_bff)
hints: []
cwlVersion: v1.1
baseCommand:
- blank_feature_filtering_flags.py
