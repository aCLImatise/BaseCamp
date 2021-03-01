class: CommandLineTool
id: wltest_worklist_db_dir.cwl
inputs:
- id: in_d
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_k
  doc: ''
  type: string?
  inputBinding:
    prefix: -k
- id: in_wl_test
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_n
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_work_list_db_dir
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_query
  doc: ''
  type: string?
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dcmtk:3.6.5--h5fca97b_0
cwlVersion: v1.1
baseCommand:
- wltest
- worklist-db-dir
