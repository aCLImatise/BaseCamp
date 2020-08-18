class: CommandLineTool
id: ../../../SOAPdenovo_Trans_127mer_pregraph.cwl
inputs:
- id: string_configfile_file
  doc: '<string>        configFile: the config file of reads'
  type: boolean
  inputBinding:
    prefix: -s
- id: string_outputgraph_prefix
  doc: '<string>        outputGraph: prefix of output graph file name'
  type: boolean
  inputBinding:
    prefix: -o
- id: int_kmermin_size
  doc: '<int>           kmer(min 13, max 127): kmer size, [23]'
  type: boolean
  inputBinding:
    prefix: -K
- id: int_ncpu_number
  doc: '<int>           n_cpu: number of cpu for use, [8]'
  type: boolean
  inputBinding:
    prefix: -p
- id: int_kmerfreqcutoff_kmers
  doc: '<int>           kmerFreqCutoff: kmers with frequency no larger than KmerFreqCutoff
    will be deleted, [0]'
  type: boolean
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- SOAPdenovo-Trans-127mer
- pregraph
