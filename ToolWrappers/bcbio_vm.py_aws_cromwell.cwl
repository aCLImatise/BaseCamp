class: CommandLineTool
id: bcbio_vm.py_aws_cromwell.cwl
inputs:
- id: in_key_pair
  doc: Existing keypair to use for accessing AWS instances.
  type: string
  inputBinding:
    prefix: --keypair
- id: in_bucket
  doc: S3 bucket to store Cromwell logs and execution files
  type: long
  inputBinding:
    prefix: --bucket
- id: in_zone
  doc: "AWS availability zones to create resources in\n(default: a, b in current region)\n"
  type: string[]
  inputBinding:
    prefix: --zone
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bcbio_vm.py
- aws
- cromwell
