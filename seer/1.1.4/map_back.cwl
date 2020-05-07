class: CommandLineTool
id: map_back.cwl
inputs:
- id: k
  doc: '[ --kmers ] arg       seer kmer output file'
  type: boolean
  inputBinding:
    prefix: -k
- id: r
  doc: '[ --references ] arg  file with tab separated reference name and fasta  file'
  type: boolean
  inputBinding:
    prefix: -r
- id: threads
  doc: '(=1)       number of threads. Suggested: 8'
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- map_back
