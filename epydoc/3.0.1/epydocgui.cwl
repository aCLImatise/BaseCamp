class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/epydocgui.cwl
inputs:
- id: debug
  doc: Do not suppress error messages
  type: boolean
  inputBinding:
    prefix: --debug
- id: file_dot_prj
  doc: An epydoc GUI project file.
  type: File
  inputBinding:
    position: 0
- id: modules_dot_dot_dot
  doc: A list of Python modules to document.
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- epydocgui
