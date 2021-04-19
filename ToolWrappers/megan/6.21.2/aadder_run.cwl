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
- id: in_percent_to_cover
  doc: '[number]        Percent of alignment that must be covered by protein. Default
    value: 90.0.'
  type: boolean?
  inputBinding:
    prefix: --percentToCover
- id: in_report_not_found
  doc: 'Report the names of DNA references for which no functional accession is available.
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/megan:6.21.2--h9ee0642_0
cwlVersion: v1.1
baseCommand:
- aadder-run
