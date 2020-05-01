#!/usr/bin/env cwl-runner

baseCommand:
- TransformationEvaluation
class: CommandLineTool
cwlVersion: v1.0
id: transformationevaluation
inputs:
- doc: "*        Input file containing the transformation description (valid formats:\
    \ 'trafoXML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Output file containing original and transformed values; if empty, output is\
    \ written to the screen (valid formats: 'trafoXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Minimum value to transform (default: '0.0')"
  id: min
  inputBinding:
    prefix: -min
  type: string
- doc: "Maximum value to transform (if at or below 'min', select a suitable maximum\
    \ based on the transformation description) (default: '0.0')"
  id: max
  inputBinding:
    prefix: -max
  type: string
- doc: "Step size between 'min' and 'max' (default: '1.0' min: '0.001')"
  id: step
  inputBinding:
    prefix: -step
  type: string
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
