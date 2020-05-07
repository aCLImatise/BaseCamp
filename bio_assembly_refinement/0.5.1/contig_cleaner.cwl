class: CommandLineTool
id: contig_cleaner.cwl
inputs:
- id: cut_off_length
  doc: Minimum acceptable contig length [2000]
  type: long
  inputBinding:
    prefix: --cutoff_length
- id: hit_percent_id
  doc: Minimum acceptable hit percent id for contained contigs [95]
  type: long
  inputBinding:
    prefix: --hit_percent_id
- id: skip
  doc: File of contig ids to skip
  type: File
  inputBinding:
    prefix: --skip
- id: debug
  doc: Keep all temp files
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- contig_cleaner
