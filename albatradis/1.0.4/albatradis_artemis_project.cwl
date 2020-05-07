class: CommandLineTool
id: albatradis_artemis_project.cwl
inputs:
- id: reference
  doc: reference EMBL file
  type: string
  inputBinding:
    position: 0
- id: experiments_metadata
  doc: experiments metadata spreadsheet
  type: string
  inputBinding:
    position: 1
- id: control
  doc: 'control files (can use multiple times) (default: None)'
  type: string
  inputBinding:
    prefix: --control
- id: output_file
  doc: 'Output filename (default: project.properties)'
  type: string
  inputBinding:
    prefix: --outputfile
- id: verbose
  doc: 'Print out more information while it runs (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: debug
  doc: 'Turn on debugging (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- albatradis-artemis_project
