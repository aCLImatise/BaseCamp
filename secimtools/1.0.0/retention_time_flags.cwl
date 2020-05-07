class: CommandLineTool
id: retention_time_flags.py.cwl
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
- id: id
  doc: Name of the column with unique identifiers.
  type: string
  inputBinding:
    prefix: --ID
- id: minutes
  doc: Value cutoff. The default is .2 minutes assuming data are in minutes.
  type: long
  inputBinding:
    prefix: --minutes
- id: pctl
  doc: The difference is calculated by 95th percentile and 5th percentile by default.
    If you add this argument, it uses 90th percentile and 10th percentile. [optional]
  type: boolean
  inputBinding:
    prefix: --pctl
- id: cv_cut_off
  doc: The default CV cutoff will flag 10 percent of the rowIDs with larger CVs. If
    you want to set a CV cutoff, put the number here. [optional]
  type: string
  inputBinding:
    prefix: --CVcutoff
- id: figure
  doc: Name of the output TSV for CV plots.
  type: string
  inputBinding:
    prefix: --figure
- id: flag
  doc: Name of the output PDF for RT flags.
  type: string
  inputBinding:
    prefix: --flag
- id: palette
  doc: Name of the palette to use.
  type: string
  inputBinding:
    prefix: --palette
- id: color
  doc: Name of a valid color scheme on the selected palette
  type: string
  inputBinding:
    prefix: --color
outputs: []
cwlVersion: v1.1
baseCommand:
- retention_time_flags.py
