class: CommandLineTool
id: RTEvaluation.cwl
inputs:
- id: in
  doc: "*             Input file (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*            Output file  (valid formats: 'csv')"
  type: File
  inputBinding:
    prefix: -out
- id: latex
  doc: Indicates whether the output file format of the table should be LaTeX or CSV
    (default)
  type: boolean
  inputBinding:
    prefix: -latex
- id: p_value_dim_1
  doc: "Significance level of first dimension RT filter (default: '0.01' min: '0'\
    \ max: '1')"
  type: double
  inputBinding:
    prefix: -p_value_dim_1
- id: p_value_dim_2
  doc: "Significance level of second dimension RT filter (default: '0.05' min: '0'\
    \ max: '1')"
  type: double
  inputBinding:
    prefix: -p_value_dim_2
- id: ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: string
  inputBinding:
    prefix: -threads
- id: write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs: []
cwlVersion: v1.1
baseCommand:
- RTEvaluation
