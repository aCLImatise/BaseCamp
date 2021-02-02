class: CommandLineTool
id: gcloud_app_instances.cwl
inputs:
- id: in_delete
  doc: Delete a specified instance.
  type: string
  inputBinding:
    position: 0
- id: in_describe
  doc: Display all data about an existing instance.
  type: string
  inputBinding:
    position: 1
- id: in_disable_debug
  doc: Disables debug mode for an instance.
  type: string
  inputBinding:
    position: 2
- id: in_enable_debug
  doc: Enables debug mode for an instance.
  type: string
  inputBinding:
    position: 3
- id: in_list
  doc: List the instances affiliated with the current App Engine project.
  type: string
  inputBinding:
    position: 4
- id: in_scp
  doc: SCP from or to the VM of an App Engine Flexible instance.
  type: string
  inputBinding:
    position: 5
- id: in_ssh
  doc: SSH into the VM of an App Engine Flexible instance.
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- app
- instances
