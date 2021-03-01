class: CommandLineTool
id: contig_cleaner.cwl
inputs:
- id: in_cut_off_length
  doc: Minimum acceptable contig length [2000]
  type: long?
  inputBinding:
    prefix: --cutoff_length
- id: in_hit_percent_id
  doc: "Minimum acceptable hit percent id for contained\ncontigs [95]"
  type: long?
  inputBinding:
    prefix: --hit_percent_id
- id: in_skip
  doc: File of contig ids to skip
  type: File?
  inputBinding:
    prefix: --skip
- id: in_debug
  doc: Keep all temp files
  type: boolean?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- contig_cleaner
