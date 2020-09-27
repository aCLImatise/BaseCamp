class: CommandLineTool
id: halTreeMutations.py.cwl
inputs:
- id: in_do_snps
  doc: ''
  type: boolean
  inputBinding:
    prefix: --doSnps
- id: in_root
  doc: ''
  type: string
  inputBinding:
    prefix: --root
- id: in_bed_name
  doc: ''
  type: string
  inputBinding:
    prefix: --bedName
- id: in_hal
  doc: input hal
  type: string
  inputBinding:
    position: 0
- id: in_outdir
  doc: output dir
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- halTreeMutations.py
