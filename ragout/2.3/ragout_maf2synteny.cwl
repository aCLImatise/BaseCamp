class: CommandLineTool
id: ragout_maf2synteny.cwl
inputs:
- id: maf_file
  doc: path to maf file
  type: string
  inputBinding:
    position: 0
- id: o
  doc: path to the output directory [default = .]
  type: string
  inputBinding:
    prefix: -o
- id: s
  doc: path to a file with custom simplification parameters [default = not set]
  type: string
  inputBinding:
    prefix: -s
- id: b
  doc: comma-separated list of synteny block scales [default = 5000]
  type: string
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- ragout-maf2synteny
