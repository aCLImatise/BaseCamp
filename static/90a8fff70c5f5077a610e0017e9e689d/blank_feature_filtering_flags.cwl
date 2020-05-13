class: CommandLineTool
id: blank_feature_filtering_flags.py.cwl
inputs:
- id: input
  doc: Input dataset in wide format.
  type: string
  inputBinding:
    prefix: --input
- id: design
  doc: Design file.
  type: string
  inputBinding:
    prefix: --design
- id: uniqid
  doc: Name of the column with uniquedentifiers.
  type: string
  inputBinding:
    prefix: --uniqID
- id: group
  doc: Name of column in design filewith Group/treatment information.
  type: string
  inputBinding:
    prefix: --group
- id: bff
  doc: Default BFF value [default 5000]
  type: string
  inputBinding:
    prefix: --bff
- id: blank
  doc: name of the column with the blanks
  type: string
  inputBinding:
    prefix: --blank
- id: criteria
  doc: Value of the criteria to selct
  type: string
  inputBinding:
    prefix: --criteria
- id: out_flags
  doc: Output path for flags file[CSV]
  type: string
  inputBinding:
    prefix: --outflags
- id: out_bff
  doc: Output path for bff file[CSV]
  type: string
  inputBinding:
    prefix: --outbff
outputs: []
cwlVersion: v1.1
baseCommand:
- blank_feature_filtering_flags.py
