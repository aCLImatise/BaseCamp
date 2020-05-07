class: CommandLineTool
id: downloadRefSeq.pl.cwl
inputs:
- id: db
  doc: 'Name of NCBI database to be downloaded. Default: refseq.'
  type: string
  inputBinding:
    position: 0
- id: sequences_out_directory
  doc: Output directory for sequences
  type: string
  inputBinding:
    position: 1
- id: taxonomy_out_directory
  doc: Output directory for taxonomy
  type: string
  inputBinding:
    position: 2
- id: target_branches
  doc: Specification of target branches (comma-separated), e.g. archaea,bacteria,fungi
  type: string
  inputBinding:
    position: 3
- id: skip_incomplete_genomes
  doc: 'Skip incomplete genomes. Default: 0.'
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- downloadRefSeq.pl
