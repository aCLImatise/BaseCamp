class: CommandLineTool
id: bland_altman_plot.py.cwl
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
- id: in_id
  doc: Name of the column with unique identifiers.
  type: string?
  inputBinding:
    prefix: --ID
- id: in_group
  doc: Group/treatment identifier in design file [Optional].
  type: File?
  inputBinding:
    prefix: --group
- id: in_figure
  doc: Name of the output PDF for Bland-Altman plots.
  type: string?
  inputBinding:
    prefix: --figure
- id: in_flag_dist
  doc: Name of the output TSV for distribution flags.
  type: string?
  inputBinding:
    prefix: --flag_dist
- id: in_flag_sample
  doc: Name of the output TSV for sample flags.
  type: string?
  inputBinding:
    prefix: --flag_sample
- id: in_flag_feature
  doc: Name of the output TSV for feature flags.
  type: string?
  inputBinding:
    prefix: --flag_feature
- id: in_prop_feature
  doc: Name of the output TSV for proportion of features.
  type: string?
  inputBinding:
    prefix: --prop_feature
- id: in_prop_sample
  doc: Name of the output TSV for proportion of samples.
  type: string?
  inputBinding:
    prefix: --prop_sample
- id: in_process_only
  doc: "Only process the given groups (list groups separated\nby spaces) [Optional]."
  type: string[]
  inputBinding:
    prefix: --process_only
- id: in_resid_cut_off
  doc: Cutoff value for flagging outliers [default=3].
  type: long?
  inputBinding:
    prefix: --resid_cutoff
- id: in_sample_flag_cut_off
  doc: "Proportion cutoff value when flagging samples\n[default=0.20]."
  type: double?
  inputBinding:
    prefix: --sample_flag_cutoff
- id: in_feature_flag_cut_off
  doc: "Proportion cutoff value when flagging features\n[default=0.05]."
  type: double?
  inputBinding:
    prefix: --feature_flag_cutoff
- id: in_debug
  doc: Add debugging log output.
  type: boolean?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/secimtools:21.3.4.2--py_0
cwlVersion: v1.1
baseCommand:
- bland_altman_plot.py
