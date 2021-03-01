class: CommandLineTool
id: knock_knock_process.cwl
inputs:
- id: in_progress
  doc: show progress bars
  type: boolean?
  inputBinding:
    prefix: --progress
- id: in_stages
  doc: ''
  type: string?
  inputBinding:
    prefix: --stages
- id: in_project_directory
  doc: "the base directory to store input data, reference\nannotations, and analysis\
    \ output for a project"
  type: string
  inputBinding:
    position: 0
- id: in_group
  doc: group name
  type: string
  inputBinding:
    position: 1
- id: in_sample
  doc: sample name
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- knock-knock
- process
