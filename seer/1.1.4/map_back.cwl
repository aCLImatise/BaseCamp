class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/map_back.cwl
inputs:
- id: arg_seer_file
  doc: '[ --kmers ] arg       seer kmer output file'
  type: boolean
  inputBinding:
    prefix: -k
- id: arg_file_tab
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
