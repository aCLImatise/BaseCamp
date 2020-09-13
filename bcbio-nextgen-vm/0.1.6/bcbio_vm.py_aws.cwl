class: CommandLineTool
id: ../../../bcbio_vm.py_aws.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bcbio_vm.py
- aws
