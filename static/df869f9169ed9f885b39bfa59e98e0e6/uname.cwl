class: CommandLineTool
id: uname.cwl
inputs:
- id: in_all
  doc: "print all information, in the following order,\nexcept omit -p and -i if unknown:"
  type: boolean?
  inputBinding:
    prefix: --all
- id: in_kernel_name
  doc: print the kernel name
  type: boolean?
  inputBinding:
    prefix: --kernel-name
- id: in_node_name
  doc: print the network node hostname
  type: boolean?
  inputBinding:
    prefix: --nodename
- id: in_kernel_release
  doc: print the kernel release
  type: boolean?
  inputBinding:
    prefix: --kernel-release
- id: in_kernel_version
  doc: print the kernel version
  type: boolean?
  inputBinding:
    prefix: --kernel-version
- id: in_machine
  doc: print the machine hardware name
  type: boolean?
  inputBinding:
    prefix: --machine
- id: in_processor
  doc: print the processor type (non-portable)
  type: boolean?
  inputBinding:
    prefix: --processor
- id: in_hardware_platform
  doc: print the hardware platform (non-portable)
  type: boolean?
  inputBinding:
    prefix: --hardware-platform
- id: in_operating_system
  doc: print the operating system
  type: boolean?
  inputBinding:
    prefix: --operating-system
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- uname
