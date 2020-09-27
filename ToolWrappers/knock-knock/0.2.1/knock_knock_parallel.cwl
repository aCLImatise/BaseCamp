class: CommandLineTool
id: knock_knock_parallel.cwl
inputs:
- id: in_conditions
  doc: ''
  type: string
  inputBinding:
    prefix: --conditions
- id: in_group
  doc: ''
  type: string
  inputBinding:
    prefix: --group
- id: in_project_directory
  doc: "the base directory to store input data, reference\nannotations, and analysis\
    \ output for a project"
  type: string
  inputBinding:
    position: 0
- id: in_max_procs
  doc: maximum number of samples to process at once
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- knock-knock
- parallel
