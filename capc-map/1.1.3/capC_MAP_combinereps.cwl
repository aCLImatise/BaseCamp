class: CommandLineTool
id: ../../../capC_MAP_combinereps.cwl
inputs:
- id: configuration_file
  doc: configuration file
  type: string
  inputBinding:
    prefix: -c
- id: directory_containing_output
  doc: directory containing output from capC-MAP for a replicate (option must appear
    multiple times).
  type: string
  inputBinding:
    prefix: -i
- id: directory_created_combined
  doc: directory to be created for combined output
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- capC-MAP
- combinereps
