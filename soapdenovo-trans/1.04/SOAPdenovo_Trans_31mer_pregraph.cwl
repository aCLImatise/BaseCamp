class: CommandLineTool
id: SOAPdenovo_Trans_31mer_pregraph.cwl
inputs:
- id: s
  doc: '<string>        configFile: the config file of reads'
  type: boolean
  inputBinding:
    prefix: -s
- id: o
  doc: '<string>        outputGraph: prefix of output graph file name'
  type: boolean
  inputBinding:
    prefix: -o
- id: k
  doc: '<int>           kmer(min 13, max 31): kmer size, [23]'
  type: boolean
  inputBinding:
    prefix: -K
- id: p
  doc: '<int>           n_cpu: number of cpu for use, [8]'
  type: boolean
  inputBinding:
    prefix: -p
- id: d
  doc: '<int>           kmerFreqCutoff: kmers with frequency no larger than KmerFreqCutoff
    will be deleted, [0]'
  type: boolean
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- SOAPdenovo-Trans-31mer
- pregraph
