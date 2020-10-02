class: CommandLineTool
id: bcbio_vm.py_aws_ansible.cwl
inputs:
- id: in_key_pair
  doc: 'Create new keypair for access (default: False)'
  type: boolean
  inputBinding:
    prefix: --keypair
- id: in_network
  doc: "network to use for the VPC, in CIDR notation\n(a.b.c.d/e) (default: 10.0.0.0/16)"
  type: double
  inputBinding:
    prefix: --network
- id: in_cluster
  doc: "base name for created VPC resources (default: bcbio)\n"
  type: string
  inputBinding:
    prefix: --cluster
- id: in_zone
  doc: "AWS availability zone to create resources in (ie. us-\neast-1a)"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bcbio_vm.py
- aws
- ansible
