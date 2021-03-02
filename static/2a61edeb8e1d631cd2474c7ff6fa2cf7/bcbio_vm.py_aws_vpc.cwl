class: CommandLineTool
id: bcbio_vm.py_aws_vpc.cwl
inputs:
- id: in_e_config
  doc: "Elasticluster bcbio configuration file (default:\n/root/.bcbio/elasticluster/config)"
  type: File?
  inputBinding:
    prefix: --econfig
- id: in_region
  doc: "EC2 region to create VPC in (defaults to us-east-1)\n(default: us-east-1)"
  type: long?
  inputBinding:
    prefix: --region
- id: in_recreate
  doc: "Remove and recreate the VPC, destroying all AWS\nresources contained in it\
    \ (default: False)"
  type: boolean?
  inputBinding:
    prefix: --recreate
- id: in_cluster
  doc: 'elasticluster cluster name (default: bcbio)'
  type: string?
  inputBinding:
    prefix: --cluster
- id: in_network
  doc: "network to use for the VPC, in CIDR notation\n(a.b.c.d/e) (default: 10.0.0.0/16)\n"
  type: double?
  inputBinding:
    prefix: --network
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bcbio_vm.py
- aws
- vpc
