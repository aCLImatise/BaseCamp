class: CommandLineTool
id: uname.cwl
inputs:
- id: all
  doc: 'all information, in the following order, except omit -p and -i if unknown:'
  type: string
  inputBinding:
    prefix: --all
- id: kernel_name
  doc: the kernel name
  type: string
  inputBinding:
    prefix: --kernel-name
- id: node_name
  doc: the network node hostname
  type: string
  inputBinding:
    prefix: --nodename
- id: kernel_release
  doc: the kernel release
  type: string
  inputBinding:
    prefix: --kernel-release
- id: kernel_version
  doc: print the kernel version
  type: boolean
  inputBinding:
    prefix: --kernel-version
- id: machine
  doc: print the machine hardware name
  type: boolean
  inputBinding:
    prefix: --machine
- id: processor
  doc: print the processor type (non-portable)
  type: boolean
  inputBinding:
    prefix: --processor
- id: hardware_platform
  doc: print the hardware platform (non-portable)
  type: boolean
  inputBinding:
    prefix: --hardware-platform
- id: operating_system
  doc: print the operating system
  type: boolean
  inputBinding:
    prefix: --operating-system
outputs: []
cwlVersion: v1.1
baseCommand:
- uname
