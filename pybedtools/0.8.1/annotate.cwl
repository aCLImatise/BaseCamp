class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/annotate.py.cwl
inputs:
- id: file_to_annotate
  doc: file to annotate
  type: string
  inputBinding:
    prefix: -a
- id: file_with_annotations
  doc: file with annotations
  type: string
  inputBinding:
    prefix: -b
- id: upstream
  doc: distance upstream of [a] to look for [b]
  type: string
  inputBinding:
    prefix: --upstream
- id: downstream
  doc: distance downstream of [a] to look for [b]
  type: string
  inputBinding:
    prefix: --downstream
- id: report_distance
  doc: report the distance, not just the genes
  type: boolean
  inputBinding:
    prefix: --report-distance
outputs: []
cwlVersion: v1.1
baseCommand:
- annotate.py
