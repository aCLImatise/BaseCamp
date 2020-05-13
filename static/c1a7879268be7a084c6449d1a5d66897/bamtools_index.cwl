class: CommandLineTool
id: bamtools_index.cwl
inputs:
- id: in
  doc: the input BAM file [stdin]
  type: string
  inputBinding:
    prefix: -in
- id: bti
  doc: create (non-standard) BamTools index file (*.bti). Default behavior is to create
    standard BAM index (*.bai)
  type: boolean
  inputBinding:
    prefix: -bti
outputs: []
cwlVersion: v1.1
baseCommand:
- bamtools
- index
