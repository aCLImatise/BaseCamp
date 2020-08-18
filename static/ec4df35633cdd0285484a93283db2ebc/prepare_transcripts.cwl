class: CommandLineTool
id: ../../../prepare_transcripts.cwl
inputs:
- id: gtf
  doc: 'Default, suitable for GENCODE and ENSEMBL GTF file, please refer: https://en.wikipedia.org/wiki/GENCODE,
    or using GTFupdate command to update your GTF file.'
  type: string
  inputBinding:
    prefix: --gtf
- id: fast_a
  doc: The genome sequences file in fasta format.
  type: string
  inputBinding:
    prefix: --fasta
- id: out_dir
  doc: annotation directory name.
  type: string
  inputBinding:
    prefix: --out_dir
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -V
outputs: []
cwlVersion: v1.1
baseCommand:
- prepare_transcripts
