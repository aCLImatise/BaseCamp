class: CommandLineTool
id: SOAPdenovo_Trans_127mer_pregraph.cwl
inputs:
- id: in_string_configfile_file
  doc: '<string>        configFile: the config file of reads'
  type: boolean
  inputBinding:
    prefix: -s
- id: in_string_outputgraph_prefix
  doc: '<string>        outputGraph: prefix of output graph file name'
  type: File
  inputBinding:
    prefix: -o
- id: in_int_kmermin_size
  doc: '<int>           kmer(min 13, max 127): kmer size, [23]'
  type: boolean
  inputBinding:
    prefix: -K
- id: in_int_number_cpu
  doc: '<int>           n_cpu: number of cpu for use, [8]'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_int_kmerfreqcutoff_kmers
  doc: '<int>           kmerFreqCutoff: kmers with frequency no larger than KmerFreqCutoff
    will be deleted, [0]'
  type: boolean
  inputBinding:
    prefix: -d
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_string_outputgraph_prefix
  doc: '<string>        outputGraph: prefix of output graph file name'
  type: File
  outputBinding:
    glob: $(inputs.in_string_outputgraph_prefix)
cwlVersion: v1.1
baseCommand:
- SOAPdenovo-Trans-127mer
- pregraph
