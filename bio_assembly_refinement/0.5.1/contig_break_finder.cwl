class: CommandLineTool
id: contig_break_finder.cwl
inputs:
- id: skip
  doc: File of contig ids to skip
  type: File
  inputBinding:
    prefix: --skip
- id: hit_percent_id
  doc: Minimum acceptable hit percent id [80]
  type: long
  inputBinding:
    prefix: --hit_percent_id
- id: min_hit_length
  doc: Minimum acceptable hit length expressed as percentage of gene length [100]
  type: long
  inputBinding:
    prefix: --min_hit_length
- id: no_random_gene
  doc: Do not run prodigal to get the start of a random gene if it cannot find genes
    in list
  type: boolean
  inputBinding:
    prefix: --no_random_gene
- id: no_rename
  doc: Do not rename contigs to indicate chromosome/plasmid
  type: boolean
  inputBinding:
    prefix: --no_rename
- id: debug
  doc: Keep all temp files
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- contig_break_finder
