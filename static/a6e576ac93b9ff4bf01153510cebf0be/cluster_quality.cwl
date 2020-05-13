class: CommandLineTool
id: cluster_quality.py.cwl
inputs:
- id: input_path
  doc: input distance matrix file [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_path
- id: map
  doc: mapping file [REQUIRED]
  type: string
  inputBinding:
    prefix: --map
- id: category
  doc: column of mapping file delimiting clusters [REQUIRED]
  type: string
  inputBinding:
    prefix: --category
outputs: []
cwlVersion: v1.1
baseCommand:
- cluster_quality.py
