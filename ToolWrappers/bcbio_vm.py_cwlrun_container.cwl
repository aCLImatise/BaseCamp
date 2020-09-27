class: CommandLineTool
id: bcbio_vm.py_cwlrun_container.cwl
inputs:
- id: in_no_container
  doc: ''
  type: boolean
  inputBinding:
    prefix: --no-container
- id: in_bc_bio_v_mdot_py
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_cwl_run
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bcbio_vm.py
- cwlrun
- container
