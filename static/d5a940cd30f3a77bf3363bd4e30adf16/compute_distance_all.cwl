class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/compute_distance_all.py.cwl
inputs:
- id: ifn_alignments
  doc: ''
  type: string[]
  inputBinding:
    prefix: --ifn_alignments
- id: nprocs
  doc: ''
  type: string
  inputBinding:
    prefix: --nprocs
outputs: []
cwlVersion: v1.1
baseCommand:
- compute_distance_all.py
