class: CommandLineTool
id: ribotricer_orfs_seq.cwl
inputs:
- id: ribot_ricer_index
  doc: Path to the index file of ribotricer This file should be generated using ribotricer
    prepare-orfs [required]
  type: string
  inputBinding:
    prefix: --ribotricer_index
- id: fast_a
  doc: Path to FASTA file  [required]
  type: string
  inputBinding:
    prefix: --fasta
- id: save_to
  doc: Path to output file  [required]
  type: string
  inputBinding:
    prefix: --saveto
outputs: []
cwlVersion: v1.1
baseCommand:
- ribotricer
- orfs-seq
