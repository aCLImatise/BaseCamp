class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/singularity_instance.cwl
inputs:
- id: instance_dot_list
  doc: Print all running container instances
  type: string
  inputBinding:
    position: 0
- id: instance_dot_start
  doc: Start a persistent container instance
  type: string
  inputBinding:
    position: 1
- id: instance_dot_stop
  doc: Stop and kill all processes within a running instance
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- singularity
- instance
