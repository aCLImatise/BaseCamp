class: CommandLineTool
id: albatradis_artemis_project.cwl
inputs:
- id: in_control
  doc: 'control files (can use multiple times) (default: None)'
  type: string
  inputBinding:
    prefix: --control
- id: in_output_file
  doc: 'Output filename (default: project.properties)'
  type: File
  inputBinding:
    prefix: --outputfile
- id: in_verbose
  doc: "Print out more information while it runs (default:\nFalse)"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: 'Turn on debugging (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_reference
  doc: reference EMBL file
  type: string
  inputBinding:
    position: 0
- id: in_experiments_metadata
  doc: experiments metadata spreadsheet
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: 'Output filename (default: project.properties)'
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- albatradis-artemis_project
