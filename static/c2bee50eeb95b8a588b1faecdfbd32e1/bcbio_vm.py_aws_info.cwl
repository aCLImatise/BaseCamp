class: CommandLineTool
id: bcbio_vm.py_aws_info.cwl
inputs:
- id: in_e_config
  doc: Elasticluster bcbio configuration file
  type: File?
  inputBinding:
    prefix: --econfig
- id: in_cluster
  doc: "elasticluster cluster name\n"
  type: string?
  inputBinding:
    prefix: --cluster
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bcbio_vm.py
- aws
- info
