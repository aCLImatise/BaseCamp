class: CommandLineTool
id: plantcv_utils.py_json2csv.cwl
inputs:
- id: in_json
  doc: Input PlantCV JSON filename.
  type: File
  inputBinding:
    prefix: --json
- id: in_csv
  doc: Output CSV filename prefix.
  type: File
  inputBinding:
    prefix: --csv
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_csv
  doc: Output CSV filename prefix.
  type: File
  outputBinding:
    glob: $(inputs.in_csv)
cwlVersion: v1.1
baseCommand:
- plantcv-utils.py
- json2csv
