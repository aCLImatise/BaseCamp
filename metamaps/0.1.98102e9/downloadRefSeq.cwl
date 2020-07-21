class: CommandLineTool
id: ../../../downloadRefSeq.pl.cwl
inputs:
- id: var_0
  doc: ''
  type: boolean
  inputBinding:
    prefix: --DB
- id: seq_ences_out_directory
  doc: ''
  type: string
  inputBinding:
    prefix: --seqencesOutDirectory
- id: var_2
  doc: ''
  type: string
  inputBinding:
    prefix: --taxonomyOutDirectory
- id: name_downloaded_refseq
  doc: 'Name of NCBI database to be downloaded. Default: refseq.'
  type: string
  inputBinding:
    position: 0
- id: sequences_out_directory
  doc: Output directory for sequences
  type: string
  inputBinding:
    position: 1
- id: output_directory_taxonomy
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
