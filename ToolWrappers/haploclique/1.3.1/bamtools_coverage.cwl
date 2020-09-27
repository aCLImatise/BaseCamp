class: CommandLineTool
id: bamtools_coverage.cwl
inputs:
- id: in_in
  doc: the input BAM file [stdin]
  type: File
  inputBinding:
    prefix: -in
- id: in_out
  doc: the output file [stdout]
  type: File
  inputBinding:
    prefix: -out
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: the output file [stdout]
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- bamtools
- coverage
