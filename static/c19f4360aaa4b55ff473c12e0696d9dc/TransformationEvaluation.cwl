class: CommandLineTool
id: TransformationEvaluation.cwl
inputs:
- id: in
  doc: "*        Input file containing the transformation description (valid formats:\
    \ 'trafoXML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "Output file containing original and transformed values; if empty, output is\
    \ written to the screen (valid formats: 'trafoXML')"
  type: File
  inputBinding:
    prefix: -out
- id: min
  doc: "Minimum value to transform (default: '0.0')"
  type: string
  inputBinding:
    prefix: -min
- id: max
  doc: "Maximum value to transform (if at or below 'min', select a suitable maximum\
    \ based on the transformation description) (default: '0.0')"
  type: string
  inputBinding:
    prefix: -max
- id: step
  doc: "Step size between 'min' and 'max' (default: '1.0' min: '0.001')"
  type: string
  inputBinding:
    prefix: -step
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
- TransformationEvaluation
