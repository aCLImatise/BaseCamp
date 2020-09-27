class: CommandLineTool
id: bamtools_2.4.1_index.cwl
inputs:
- id: in_in
  doc: the input BAM file [stdin]
  type: File
  inputBinding:
    prefix: -in
- id: in_bti
  doc: "create (non-standard) BamTools\nindex file (*.bti). Default behavior is to\n\
    create standard BAM index (*.bai)"
  type: boolean
  inputBinding:
    prefix: -bti
- id: in_bam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_index
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bamtools-2.4.1
- index
