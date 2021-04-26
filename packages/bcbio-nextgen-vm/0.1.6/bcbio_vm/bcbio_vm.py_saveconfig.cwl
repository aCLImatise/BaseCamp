class: CommandLineTool
id: bcbio_vm.py_saveconfig.cwl
inputs:
- id: in_datadir
  doc: ''
  type: string?
  inputBinding:
    prefix: --datadir
- id: in_bc_bio_v_mdot_py
  doc: ''
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
- bcbio_vm.py
- saveconfig
