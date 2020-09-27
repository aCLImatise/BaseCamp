class: CommandLineTool
id: bcbio_vm.py_aws_cluster.cwl
inputs:
- id: in_bootstrap
  doc: Update a bcbio AWS system with the latest code and
  type: string
  inputBinding:
    position: 0
- id: in_tools
  doc: command             Run a script on the bcbio frontend node inside a
  type: string
  inputBinding:
    position: 1
- id: in_ssh
  doc: SSH to a bcbio cluster
  type: string
  inputBinding:
    position: 0
- id: in_start
  doc: Start a bcbio cluster
  type: string
  inputBinding:
    position: 1
- id: in_setup
  doc: Rerun cluster configuration steps
  type: string
  inputBinding:
    position: 2
- id: in_stop
  doc: Stop a bcbio cluster
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bcbio_vm.py
- aws
- cluster
