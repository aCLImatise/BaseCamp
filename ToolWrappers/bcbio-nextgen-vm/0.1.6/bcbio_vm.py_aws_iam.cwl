class: CommandLineTool
id: bcbio_vm.py_aws_iam.cwl
inputs:
- id: in_e_config
  doc: Elasticluster bcbio configuration file
  type: File?
  inputBinding:
    prefix: --econfig
- id: in_region
  doc: EC2 region to create IAM user in (defaults to us-east-1)
  type: long?
  inputBinding:
    prefix: --region
- id: in_recreate
  doc: Recreate current IAM user access keys
  type: boolean?
  inputBinding:
    prefix: --recreate
- id: in_no_create
  doc: "Do not create a new IAM user, just generate a\nconfiguration file. Useful\
    \ for users without full\npermissions to IAM.\n"
  type: boolean?
  inputBinding:
    prefix: --nocreate
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bcbio_vm.py
- aws
- iam
