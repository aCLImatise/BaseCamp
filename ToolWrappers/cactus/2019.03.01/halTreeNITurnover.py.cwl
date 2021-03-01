class: CommandLineTool
id: halTreeNITurnover.py.cwl
inputs:
- id: in_conserved_bed_name
  doc: "Name function for output bed files where genome name\nis specifed as %s (default:\
    \ %%s_cons.bed)"
  type: string?
  inputBinding:
    prefix: --conservedBedName
- id: in_root
  doc: 'root (default: None)'
  type: string?
  inputBinding:
    prefix: --root
- id: in_hal
  doc: input hal
  type: string
  inputBinding:
    position: 0
- id: in_workdir
  doc: working dir for all bed files
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- halTreeNITurnover.py
