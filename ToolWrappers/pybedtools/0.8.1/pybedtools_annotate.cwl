class: CommandLineTool
id: pybedtools_annotate.cwl
inputs:
- id: in_downstream
  doc: not specified only 2 colummns are added to the
  type: long?
  inputBinding:
    prefix: --downstream
- id: in_file_to_annotate
  doc: file to annotate
  type: File?
  inputBinding:
    prefix: -a
- id: in_file_with_annotations
  doc: file with annotations
  type: File?
  inputBinding:
    prefix: -b
- id: in_report_distance
  doc: report the distance, not just the genes
  type: boolean?
  inputBinding:
    prefix: --report-distance
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pybedtools
- annotate
