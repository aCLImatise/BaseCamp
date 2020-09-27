class: CommandLineTool
id: coefficient_variation_flags.py.cwl
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
- id: in_group
  doc: "Name of column in design file with Group/treatment\ninformation."
  type: File
  inputBinding:
    prefix: --group
- id: in_levels
  doc: Different groups tosort by separeted by commas.
  type: string
  inputBinding:
    prefix: --levels
- id: in_cv_cut_off
  doc: "The default CV cutoff will flag 10 percent of the\nrowIDs with larger CVs.\
    \ If you want to set a CV\ncutoff, put the number here. [optional]"
  type: long
  inputBinding:
    prefix: --CVcutoff
- id: in_figure
  doc: Name of the output PDF for CV plots.
  type: string
  inputBinding:
    prefix: --figure
- id: in_flag
  doc: Name of the output TSV for CV flags.
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
- coefficient_variation_flags.py
