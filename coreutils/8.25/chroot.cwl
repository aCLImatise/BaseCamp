class: CommandLineTool
id: chroot.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- chroot
