class: CommandLineTool
id: ra_consensus.cwl
inputs:
- id: reads
  doc: (required) input afg reads file
  type: File
  inputBinding:
    prefix: --reads
- id: contigs
  doc: (required) input afg contigs file
  type: File
  inputBinding:
    prefix: --contigs
- id: threads
  doc: 'default: approx. number of processors/cores number of threads used'
  type: long
  inputBinding:
    prefix: --threads
- id: out
  doc: 'default: cout output fasta transcripts file'
  type: File
  inputBinding:
    prefix: --out
outputs: []
cwlVersion: v1.1
baseCommand:
- ra_consensus
