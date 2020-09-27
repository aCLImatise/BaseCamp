class: CommandLineTool
id: contig_break_finder.cwl
inputs:
- id: in_skip
  doc: File of contig ids to skip
  type: File
  inputBinding:
    prefix: --skip
- id: in_hit_percent_id
  doc: Minimum acceptable hit percent id [80]
  type: long
  inputBinding:
    prefix: --hit_percent_id
- id: in_min_hit_length
  doc: "Minimum acceptable hit length expressed as percentage\nof gene length [100]"
  type: long
  inputBinding:
    prefix: --min_hit_length
- id: in_no_random_gene
  doc: "Do not run prodigal to get the start of a random gene\nif it cannot find genes\
    \ in list"
  type: boolean
  inputBinding:
    prefix: --no_random_gene
- id: in_no_rename
  doc: Do not rename contigs to indicate chromosome/plasmid
  type: boolean
  inputBinding:
    prefix: --no_rename
- id: in_debug
  doc: Keep all temp files
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- contig_break_finder
