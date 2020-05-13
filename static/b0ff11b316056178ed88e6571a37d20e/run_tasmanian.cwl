class: CommandLineTool
id: run_tasmanian.cwl
inputs:
- id: fragment_length
  doc: (use fragments withi these lengths ONLY)
  type: boolean
  inputBinding:
    prefix: --fragment-length
- id: output_prefix
  doc: (use this prefix for the output and logging files)
  type: boolean
  inputBinding:
    prefix: --output-prefix
- id: confidence
  doc: '(number of bases in the complement region of the read) '
  type: boolean
  inputBinding:
    prefix: --confidence
- id: debug
  doc: '(create a log file) '
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- run_tasmanian
