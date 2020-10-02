class: CommandLineTool
id: retention_time_flags.py.cwl
inputs:
- id: in_input
  doc: Input dataset in wide format.
  type: string
  inputBinding:
    prefix: --input
- id: in_design
  doc: Design file.
  type: File
  inputBinding:
    prefix: --design
- id: in_id
  doc: Name of the column with unique identifiers.
  type: string
  inputBinding:
    prefix: --ID
- id: in_minutes
  doc: "Value cutoff. The default is .2 minutes assuming data\nare in minutes."
  type: double
  inputBinding:
    prefix: --minutes
- id: in_pctl
  doc: "The difference is calculated by 95th percentile and\n5th percentile by default.\
    \ If you add this argument,\nit uses 90th percentile and 10th percentile.\n[optional]"
  type: boolean
  inputBinding:
    prefix: --pctl
- id: in_cv_cut_off
  doc: "The default CV cutoff will flag 10 percent of the\nrowIDs with larger CVs.\
    \ If you want to set a CV\ncutoff, put the number here. [optional]"
  type: long
  inputBinding:
    prefix: --CVcutoff
- id: in_figure
  doc: Name of the output TSV for CV plots.
  type: string
  inputBinding:
    prefix: --figure
- id: in_flag
  doc: Name of the output PDF for RT flags.
  type: string
  inputBinding:
    prefix: --flag
- id: in_palette
  doc: Name of the palette to use.
  type: string
  inputBinding:
    prefix: --palette
- id: in_color
  doc: "Name of a valid color scheme on the selected palette\n"
  type: string
  inputBinding:
    prefix: --color
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- retention_time_flags.py
