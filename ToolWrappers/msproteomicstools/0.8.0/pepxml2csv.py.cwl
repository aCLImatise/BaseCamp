class: CommandLineTool
id: pepxml2csv.py.cwl
inputs:
- id: in_in_file
  doc: = sys.argv[1]
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pepxml2csv.py
