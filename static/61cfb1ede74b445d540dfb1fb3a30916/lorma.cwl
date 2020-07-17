class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/lorma.sh.cwl
inputs:
- id: sequence_data_intermediate
  doc: the sequence data of intermediate LoRDEC steps
  type: string
  inputBinding:
    prefix: -s
- id: lordec_steps
  doc: LoRDEC steps
  type: string
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- lorma.sh
