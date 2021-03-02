class: CommandLineTool
id: SOAPdenovo_127mer_pregraph.cwl
inputs:
- id: in_config_file_solexa
  doc: 'configFile: the config file of solexa reads'
  type: File?
  inputBinding:
    prefix: -s
- id: in_outputgraph_prefix_output
  doc: 'outputGraph: prefix of output graph file name'
  type: File?
  inputBinding:
    prefix: -o
- id: in_kmermin_max_size
  doc: 'kmer(min 13, max 127): kmer size, [23]'
  type: long?
  inputBinding:
    prefix: -K
- id: in_ncpu_number_cpu
  doc: 'n_cpu: number of cpu for use, [8]'
  type: long?
  inputBinding:
    prefix: -p
- id: in_initmemoryassumption_memory_assumption
  doc: 'initMemoryAssumption: memory assumption initialized to avoid further reallocation,
    unit GB, [0]'
  type: long?
  inputBinding:
    prefix: -a
- id: in_optional_output_information
  doc: (optional)    output extra information for resolving repeats in contig step,
    [NO]
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_kmerfreqcutoff_kmers_larger
  doc: 'KmerFreqCutoff: kmers with frequency no larger than KmerFreqCutoff will be
    deleted, [0]'
  type: long?
  inputBinding:
    prefix: -d
- id: in_pre_graph
  doc: pregraph -s configFile -o outputGraph [-R] [-K kmer -p n_cpu -a initMemoryAssumption
    -d KmerFreqCutoff]
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outputgraph_prefix_output
  doc: 'outputGraph: prefix of output graph file name'
  type: File?
  outputBinding:
    glob: $(inputs.in_outputgraph_prefix_output)
hints: []
cwlVersion: v1.1
baseCommand:
- SOAPdenovo-127mer
- pregraph
