class: CommandLineTool
id: varda2_client_sample.cwl
inputs:
- id: in_uuid
  doc: Sample UUID
  type: string?
  inputBinding:
    prefix: --uuid
- id: in_disease_code
  doc: Disease indication code
  type: string?
  inputBinding:
    prefix: --disease-code
- id: in_lab_sample_id
  doc: "Local sample id\n"
  type: string?
  inputBinding:
    prefix: --lab-sample-id
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/varda2-client:0.9--py_0
cwlVersion: v1.1
baseCommand:
- varda2-client
- sample
