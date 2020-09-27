class: CommandLineTool
id: lorma.sh.cwl
inputs:
- id: in_sequence_data_intermediate
  doc: the sequence data of intermediate LoRDEC steps
  type: string
  inputBinding:
    prefix: -s
- id: in_lordec_steps
  doc: LoRDEC steps
  type: string
  inputBinding:
    prefix: -n
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lorma.sh
