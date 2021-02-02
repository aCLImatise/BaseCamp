class: CommandLineTool
id: anova_fixed.py.cwl
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
- id: in_factors
  doc: Factors to run ANOVA
  type: string
  inputBinding:
    prefix: --factors
- id: in_factor_types
  doc: Type of factors to run ANOVA
  type: string
  inputBinding:
    prefix: --factorTypes
- id: in_interactions
  doc: Ask for interactions to run ANOVA
  type: boolean
  inputBinding:
    prefix: --interactions
- id: in_flags
  doc: Flags file name.
  type: File
  inputBinding:
    prefix: --flags
- id: in_fig
  doc: Output figure name for q-q plots [pdf].
  type: string
  inputBinding:
    prefix: --fig
- id: in_fig_two
  doc: "Output figure name for volcano plots [pdf].\n"
  type: long
  inputBinding:
    prefix: --fig2
- id: in_output
  doc: "-o ONAME, --out ONAME\nOutput file name."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- anova_fixed.py
