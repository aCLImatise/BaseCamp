class: CommandLineTool
id: kmds.cwl
inputs:
- id: k
  doc: '[ --kmers ] arg       dsm kmer output file (not needed if using  --mds_concat)'
  type: boolean
  inputBinding:
    prefix: -k
- id: p
  doc: '[ --pheno ] arg       .pheno metadata'
  type: boolean
  inputBinding:
    prefix: -p
- id: o
  doc: '[ --output ] arg      output prefix for new dsm file'
  type: boolean
  inputBinding:
    prefix: -o
- id: no_mds
  doc: do not perform MDS; output subsampled matrix instead
  type: boolean
  inputBinding:
    prefix: --no_mds
- id: write_distances
  doc: write csv of distance matrix
  type: boolean
  inputBinding:
    prefix: --write_distances
- id: mds_concat
  doc: list of subsampled matrices to use in MDS. Performs  only MDS; implies --no_filtering
  type: string
  inputBinding:
    prefix: --mds_concat
- id: pc
  doc: (=10)           number of principal coordinates to output
  type: string
  inputBinding:
    prefix: --pc
- id: size
  doc: (=1000000)    number of kmers to use in MDS
  type: string
  inputBinding:
    prefix: --size
- id: threads
  doc: '(=1)       number of threads. Suggested: 8'
  type: string
  inputBinding:
    prefix: --threads
- id: no_filtering
  doc: turn off all filtering and do not output new kmer  file
  type: boolean
  inputBinding:
    prefix: --no_filtering
- id: max_length
  doc: (=100)  maximum kmer length
  type: string
  inputBinding:
    prefix: --max_length
- id: maf
  doc: (=0.01)        minimum kmer frequency
  type: string
  inputBinding:
    prefix: --maf
- id: min_words
  doc: minimum kmer occurences. Overrides --maf
  type: string
  inputBinding:
    prefix: --min_words
outputs: []
cwlVersion: v1.1
baseCommand:
- kmds
