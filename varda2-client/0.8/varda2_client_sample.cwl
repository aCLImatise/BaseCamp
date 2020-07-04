class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/varda2_client_sample.cwl
inputs:
- id: uuid
  doc: Sample UUID
  type: string
  inputBinding:
    prefix: --uuid
- id: disease_code
  doc: Disease indication code
  type: string
  inputBinding:
    prefix: --disease-code
- id: lab_sample_id
  doc: Local sample id
  type: string
  inputBinding:
    prefix: --lab-sample-id
outputs: []
cwlVersion: v1.1
baseCommand:
- varda2-client
- sample
