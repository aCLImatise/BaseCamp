class: CommandLineTool
id: runidba.py_outputpathdir.cwl
inputs:
- id: para_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: readfile
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_path_dir
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- runidba.py
- outputpathdir
