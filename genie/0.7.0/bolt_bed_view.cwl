class: CommandLineTool
id: bolt_bed_view.cwl
inputs:
- id: genie
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bed
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: view
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: file_path
  doc: A bam file (*require)
  type: string
  inputBinding:
    prefix: --filepath
outputs: []
cwlVersion: v1.1
baseCommand:
- bolt
- bed
- view
