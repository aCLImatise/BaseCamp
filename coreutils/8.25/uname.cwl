#!/usr/bin/env cwl-runner

baseCommand:
- uname
class: CommandLineTool
cwlVersion: v1.0
id: uname
inputs:
- doc: 'all information, in the following order, except omit -p and -i if unknown:'
  id: all
  inputBinding:
    prefix: --all
  type: string
- doc: the kernel name
  id: kernel_name
  inputBinding:
    prefix: --kernel-name
  type: string
- doc: the network node hostname
  id: node_name
  inputBinding:
    prefix: --nodename
  type: string
- doc: the kernel release
  id: kernel_release
  inputBinding:
    prefix: --kernel-release
  type: string
- doc: print the kernel version
  id: kernel_version
  inputBinding:
    prefix: --kernel-version
  type: boolean
- doc: print the machine hardware name
  id: machine
  inputBinding:
    prefix: --machine
  type: boolean
- doc: print the processor type (non-portable)
  id: processor
  inputBinding:
    prefix: --processor
  type: boolean
- doc: print the hardware platform (non-portable)
  id: hardware_platform
  inputBinding:
    prefix: --hardware-platform
  type: boolean
- doc: print the operating system
  id: operating_system
  inputBinding:
    prefix: --operating-system
  type: boolean
