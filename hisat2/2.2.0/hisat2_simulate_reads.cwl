class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hisat2_simulate_reads.py_base_fname.cwl
inputs:
- id: d
  doc: ''
  type: boolean
  inputBinding:
    prefix: -d
- id: single_end
  doc: ''
  type: boolean
  inputBinding:
    prefix: --single-end
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: his_at_two_simulate_reads_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- hisat2_simulate_reads.py
- base_fname
