class: CommandLineTool
id: bcbio_vm.py_aws_icel.cwl
inputs:
- id: in_create
  doc: "Create scratch filesystem using Intel Cloud Edition\nfor Lustre"
  type: string
  inputBinding:
    position: 0
- id: in_fs_spec
  doc: Get the filesystem spec for a running filesystem
  type: string
  inputBinding:
    position: 1
- id: in_mount
  doc: Mount Lustre filesystem on all cluster nodes
  type: string
  inputBinding:
    position: 2
- id: in_unmount
  doc: Unmount Lustre filesystem on all cluster nodes
  type: string
  inputBinding:
    position: 3
- id: in_stop
  doc: "Stop the running Lustre filesystem and clean up\nresources\n"
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bcbio_vm.py
- aws
- icel
