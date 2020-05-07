class: CommandLineTool
id: combineKmers_2.cwl
inputs:
- id: r
  doc: '[ --samples ] arg  file with tab separated sample name and kmer file'
  type: boolean
  inputBinding:
    prefix: -r
- id: o
  doc: '[ --output ] arg   output file prefix'
  type: boolean
  inputBinding:
    prefix: -o
- id: min_samples
  doc: (=1) minimum number of samples kmer must occur in to be  printed
  type: string
  inputBinding:
    prefix: --min_samples
outputs: []
cwlVersion: v1.1
baseCommand:
- combineKmers
- '2'
