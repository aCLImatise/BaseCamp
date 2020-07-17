class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/chromosomer_simulator.cwl
inputs:
- id: gap_size
  doc: the size of gaps between fragments on a chromosome
  type: string
  inputBinding:
    prefix: --gap_size
- id: unplaced
  doc: the number of unplaced fragments
  type: string
  inputBinding:
    prefix: --unplaced
- id: prefix
  doc: the prefix for output file names
  type: string
  inputBinding:
    prefix: --prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- chromosomer
- simulator
