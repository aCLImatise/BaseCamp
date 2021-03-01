class: CommandLineTool
id: knock_knock_build_targets.cwl
inputs:
- id: in_project_directory
  doc: "the base directory to store input data, reference\nannotations, and analysis\
    \ output for a project"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- knock-knock
- build-targets
