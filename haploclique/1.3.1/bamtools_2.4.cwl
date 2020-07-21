class: CommandLineTool
id: ../../../bamtools_2.4.1_stats.cwl
inputs:
- id: in
  doc: the input BAM file [stdin]
  type: string
  inputBinding:
    prefix: -in
- id: list
  doc: the input BAM file list, one line per file
  type: File
  inputBinding:
    prefix: -list
- id: insert
  doc: summarize insert size data
  type: boolean
  inputBinding:
    prefix: -insert
- id: bam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: stats
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bamtools-2.4.1
- stats
