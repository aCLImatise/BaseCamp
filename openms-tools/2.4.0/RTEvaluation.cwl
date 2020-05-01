#!/usr/bin/env cwl-runner

baseCommand:
- RTEvaluation
class: CommandLineTool
cwlVersion: v1.0
id: rtevaluation
inputs:
- doc: "*             Input file (valid formats: 'idXML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*            Output file  (valid formats: 'csv')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: Indicates whether the output file format of the table should be LaTeX or CSV
    (default)
  id: latex
  inputBinding:
    prefix: -latex
  type: boolean
- doc: "Significance level of first dimension RT filter (default: '0.01' min: '0'\
    \ max: '1')"
  id: p_value_dim_1
  inputBinding:
    prefix: -p_value_dim_1
  type: double
- doc: "Significance level of second dimension RT filter (default: '0.05' min: '0'\
    \ max: '1')"
  id: p_value_dim_2
  inputBinding:
    prefix: -p_value_dim_2
  type: double
- doc: Use the given TOPP INI file
  id: ini
  inputBinding:
    prefix: -ini
  type: File
- doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  id: threads
  inputBinding:
    prefix: -threads
  type: string
- doc: Writes the default configuration file
  id: write_ini
  inputBinding:
    prefix: -write_ini
  type: File
- doc: Shows all options (including advanced)
  id: helphelp
  inputBinding:
    prefix: --helphelp
  type: boolean
