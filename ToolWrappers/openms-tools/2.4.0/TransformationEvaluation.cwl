class: CommandLineTool
id: TransformationEvaluation.cwl
inputs:
- id: in_in
  doc: "*        Input file containing the transformation description (valid formats:\
    \ 'trafoXML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "Output file containing original and transformed values; if empty, output is\
    \ written to the screen (valid formats: 'trafoXML')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_min
  doc: "Minimum value to transform (default: '0')"
  type: long?
  inputBinding:
    prefix: -min
- id: in_max
  doc: "Maximum value to transform (if at or below 'min', select a suitable maximum\
    \ based on the transformation description) (default: '0')"
  type: long?
  inputBinding:
    prefix: -max
- id: in_step
  doc: "Step size between 'min' and 'max' (default: '1' min: '0.001')"
  type: long?
  inputBinding:
    prefix: -step
- id: in_ini
  doc: Use the given TOPP INI file
  type: File?
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long?
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File?
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean?
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "Output file containing original and transformed values; if empty, output is\
    \ written to the screen (valid formats: 'trafoXML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- TransformationEvaluation
