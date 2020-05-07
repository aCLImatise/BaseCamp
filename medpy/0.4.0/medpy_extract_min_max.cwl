class: CommandLineTool
id: medpy_extract_min_max.py.cwl
inputs:
- id: csv
  doc: The file to store the results in (\wo suffix).
  type: string
  inputBinding:
    position: 0
- id: images
  doc: One or more images.
  type: string
  inputBinding:
    position: 1
- id: v
  doc: Display more information.
  type: boolean
  inputBinding:
    prefix: -v
- id: d
  doc: Display debug information.
  type: boolean
  inputBinding:
    prefix: -d
- id: f
  doc: Silently override existing output images.
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- medpy_extract_min_max.py
