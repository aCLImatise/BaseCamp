class: CommandLineTool
id: h5redeploy.cwl
inputs:
- id: in_echo
  doc: Show all the shell commands executed
  type: boolean
  inputBinding:
    prefix: -echo
- id: in_force
  doc: No prompt, just do it
  type: boolean
  inputBinding:
    prefix: -force
- id: in_prefix
  doc: "New directory to find HDF5 lib/ and include/\nsubdirectories [default: current\
    \ directory]"
  type: Directory
  inputBinding:
    prefix: -prefix
- id: in_exec_prefix
  doc: "New directory to find HDF5 lib/\nsubdirectory [default: <prefix>]"
  type: Directory
  inputBinding:
    prefix: -exec-prefix
- id: in_libdir
  doc: "New directory for the HDF5 lib directory\n[default: <exec-prefix>/lib]"
  type: Directory
  inputBinding:
    prefix: -libdir
- id: in_includedir
  doc: "New directory for the HDF5 header files\n[default: <prefix>/include]"
  type: Directory
  inputBinding:
    prefix: -includedir
- id: in_tool
  doc: "Tool to update. TOOL must be in the current\ndirectory and writable. [default:\
    \ h5cc h5pcc h5fc h5pfc h5c++]"
  type: Directory
  inputBinding:
    prefix: -tool
- id: in_show
  doc: Show the commands without executing them
  type: boolean
  inputBinding:
    prefix: -show
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- h5redeploy
