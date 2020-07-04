class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/chroot.cwl
inputs:
- id: groups
  doc: specify supplementary groups as g1,g2,..,gN
  type: string
  inputBinding:
    prefix: --groups
- id: user_spec
  doc: :GROUP  specify user and group (ID or name) to use
  type: string
  inputBinding:
    prefix: --userspec
- id: skip_chdir
  doc: do not change working directory to '/'
  type: boolean
  inputBinding:
    prefix: --skip-chdir
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: new_root
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- chroot
