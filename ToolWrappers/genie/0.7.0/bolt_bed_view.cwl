class: CommandLineTool
id: bolt_bed_view.cwl
inputs:
- id: in_file_path
  doc: A bam file (*require)
  type: File?
  inputBinding:
    prefix: --filepath
- id: in_genie
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_view
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bolt
- bed
- view
