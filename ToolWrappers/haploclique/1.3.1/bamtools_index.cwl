class: CommandLineTool
id: bamtools_index.cwl
inputs:
- id: in_in
  doc: the input BAM file [stdin]
  type: File?
  inputBinding:
    prefix: -in
- id: in_bti
  doc: "create (non-standard) BamTools\nindex file (*.bti). Default behavior is to\n\
    create standard BAM index (*.bai)"
  type: boolean?
  inputBinding:
    prefix: -bti
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bamtools
- index
