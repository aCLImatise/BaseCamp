class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/annotate_mq_ionmobility.py.cwl
inputs:
- id: mq_out_dir
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: pas_ef_analysis_dir
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_prefix
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- annotate_mq_ionmobility.py
