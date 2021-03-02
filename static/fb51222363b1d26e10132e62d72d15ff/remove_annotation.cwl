class: CommandLineTool
id: remove_annotation.cwl
inputs:
- id: in_fast_q
  doc: One or more fastq files from which the annotation is to be
  type: string
  inputBinding:
    position: 0
- id: in_extracted_dot
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- remove_annotation
