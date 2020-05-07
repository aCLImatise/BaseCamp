class: CommandLineTool
id: bland_altman_plot.py.cwl
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
- id: group
  doc: Group/treatment identifier in design file [Optional].
  type: string
  inputBinding:
    prefix: --group
- id: figure
  doc: Name of the output PDF for Bland-Altman plots.
  type: string
  inputBinding:
    prefix: --figure
- id: flag_dist
  doc: Name of the output TSV for distribution flags.
  type: string
  inputBinding:
    prefix: --flag_dist
- id: flag_sample
  doc: Name of the output TSV for sample flags.
  type: string
  inputBinding:
    prefix: --flag_sample
- id: flag_feature
  doc: Name of the output TSV for feature flags.
  type: string
  inputBinding:
    prefix: --flag_feature
- id: process_only
  doc: Only process the given groups (list groups separated by spaces) [Optional].
  type: string[]
  inputBinding:
    prefix: --process_only
- id: resid_cut_off
  doc: Cutoff value for flagging outliers [default=3].
  type: string
  inputBinding:
    prefix: --resid_cutoff
- id: sample_flag_cut_off
  doc: Proportion cutoff value when flagging samples [default=0.20].
  type: string
  inputBinding:
    prefix: --sample_flag_cutoff
- id: feature_flag_cut_off
  doc: Proportion cutoff value when flagging features [default=0.05].
  type: string
  inputBinding:
    prefix: --feature_flag_cutoff
- id: debug
  doc: Add debugging log output.
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- bland_altman_plot.py
