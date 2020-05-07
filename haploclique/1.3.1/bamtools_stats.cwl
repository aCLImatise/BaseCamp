class: CommandLineTool
id: bamtools_stats.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- bamtools
- stats
