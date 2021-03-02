class: CommandLineTool
id: gcloud_compute_instance_templates.cwl
inputs:
- id: in_create
  doc: Create a Compute Engine virtual machine instance template.
  type: string
  inputBinding:
    position: 0
- id: in_delete
  doc: Delete Google Compute Engine virtual machine instance templates.
  type: string
  inputBinding:
    position: 1
- id: in_describe
  doc: Describe a virtual machine instance template.
  type: string
  inputBinding:
    position: 2
- id: in_list
  doc: List Google Compute Engine instance templates.
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gcloud
- compute
- instance-templates
