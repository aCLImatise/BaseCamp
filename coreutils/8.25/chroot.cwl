#!/usr/bin/env cwl-runner

baseCommand:
- chroot
class: CommandLineTool
cwlVersion: v1.0
id: chroot
inputs:
- doc: specify supplementary groups as g1,g2,..,gN
  id: groups
  inputBinding:
    prefix: --groups
  type: string
- doc: :GROUP  specify user and group (ID or name) to use
  id: user_spec
  inputBinding:
    prefix: --userspec
  type: string
- doc: do not change working directory to '/'
  id: skip_chdir
  inputBinding:
    prefix: --skip-chdir
  type: boolean
