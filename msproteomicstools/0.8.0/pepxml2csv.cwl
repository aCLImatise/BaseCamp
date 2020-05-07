class: CommandLineTool
id: pepxml2csv.py.cwl
inputs:
- id: in_file
  doc: = sys.argv[1]
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pepxml2csv.py
