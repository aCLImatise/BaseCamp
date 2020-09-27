class: CommandLineTool
id: bamtools_2.4.1_coverage.cwl
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
- id: in_bam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_coverage
  doc: ''
  type: string
  inputBinding:
    position: 1
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
- bamtools-2.4.1
- coverage
