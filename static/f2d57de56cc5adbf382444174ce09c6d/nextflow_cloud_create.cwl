class: CommandLineTool
id: nextflow_cloud_create.cwl
inputs:
- id: in_instance_count
  doc: Instances count
  type: boolean?
  inputBinding:
    prefix: -instance-count
- id: in_image_id
  doc: Image ID
  type: boolean?
  inputBinding:
    prefix: -image-id
- id: in_instance_type
  doc: Instance type
  type: boolean?
  inputBinding:
    prefix: -instance-type
- id: in_spot_price
  doc: Price for spot/preemptive instances
  type: boolean?
  inputBinding:
    prefix: -spot-price
- id: in_region
  doc: The region to use. Overrides config/env settings.
  type: boolean?
  inputBinding:
    prefix: -region
- id: in_profile
  doc: Configuration profile
  type: boolean?
  inputBinding:
    prefix: -profile
- id: in_skip_launch_confirmation
  doc: "Skip launch confirmation\n"
  type: boolean?
  inputBinding:
    prefix: -y
- id: in_cluster_name
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nextflow
- cloud
- create
