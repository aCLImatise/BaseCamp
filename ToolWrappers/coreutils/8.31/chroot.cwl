class: CommandLineTool
id: chroot.cwl
inputs:
- id: in_groups
  doc: specify supplementary groups as g1,g2,..,gN
  type: long
  inputBinding:
    prefix: --groups
- id: in_user_spec
  doc: :GROUP  specify user and group (ID or name) to use
  type: string
  inputBinding:
    prefix: --userspec
- id: in_skip_chdir
  doc: do not change working directory to '/'
  type: boolean
  inputBinding:
    prefix: --skip-chdir
- id: in_new_root
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- chroot
