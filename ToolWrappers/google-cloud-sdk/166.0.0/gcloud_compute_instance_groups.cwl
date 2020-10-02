class: CommandLineTool
id: gcloud_compute_instance_groups.cwl
inputs:
- id: in_managed
  doc: Read and manipulate Google Compute Engine managed instance groups.
  type: string
  inputBinding:
    position: 0
- id: in_unmanaged
  doc: Read and manipulate Google Compute Engine unmanaged instance group.
  type: string
  inputBinding:
    position: 1
- id: in_describe
  doc: Display detailed information about an instance group.
  type: string
  inputBinding:
    position: 0
- id: in_get_named_ports
  doc: Lists the named ports for an instance group resource.
  type: string
  inputBinding:
    position: 1
- id: in_list
  doc: List Google Compute Engine instance groups.
  type: string
  inputBinding:
    position: 2
- id: in_list_instances
  doc: List instances present in the instance group.
  type: string
  inputBinding:
    position: 3
- id: in_set_named_ports
  doc: Sets the list of named ports for an instance group.
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- compute
- instance-groups
