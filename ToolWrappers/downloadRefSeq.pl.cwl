class: CommandLineTool
id: downloadRefSeq.pl.cwl
inputs:
- id: in_seq_ences_out_directory
  doc: ''
  type: string
  inputBinding:
    prefix: --seqencesOutDirectory
- id: in_var_1
  doc: ''
  type: boolean
  inputBinding:
    prefix: --DB
- id: in_name_ncbi_database
  doc: 'Name of NCBI database to be downloaded. Default: refseq.'
  type: string
  inputBinding:
    position: 0
- id: in_sequences_out_directory
  doc: Output directory for sequences
  type: string
  inputBinding:
    position: 1
- id: in_taxonomy_out_directory
  doc: Output directory for taxonomy
  type: string
  inputBinding:
    position: 2
- id: in_target_branches
  doc: Specification of target branches (comma-separated), e.g. archaea,bacteria,fungi
  type: string
  inputBinding:
    position: 3
- id: in_skip_incomplete_genomes
  doc: 'Skip incomplete genomes. Default: 0.'
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- downloadRefSeq.pl
