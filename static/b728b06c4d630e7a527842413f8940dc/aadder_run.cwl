class: CommandLineTool
id: aadder_run.cwl
inputs:
- id: in_input
  doc: '[string(s)]              Input SAM file(s) (.gz ok). Mandatory option.'
  type: boolean?
  inputBinding:
    prefix: --input
- id: in_index
  doc: '[string]                 AAdd index directory. Mandatory option.'
  type: boolean?
  inputBinding:
    prefix: --index
- id: in_output
  doc: '[string(s)]             Output file(s) (.gz ok) or directory. Mandatory option.'
  type: File?
  inputBinding:
    prefix: --output
- id: in_report_not_found
  doc: 'Report the names of DNA reference for which no functional accession is available.
    Default value: false.'
  type: boolean?
  inputBinding:
    prefix: --reportNotFound
- id: in_verbose
  doc: 'Echo commandline options and be verbose. Default value: false.'
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: '[string(s)]             Output file(s) (.gz ok) or directory. Mandatory option.'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- aadder-run
