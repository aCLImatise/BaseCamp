class: CommandLineTool
id: SOAPdenovo_127mer_map.cwl
inputs:
- id: in_configfile_config_file
  doc: 'configFile: the config file of solexa reads'
  type: File
  inputBinding:
    prefix: -s
- id: in_inputgraph_prefix_input
  doc: 'inputGraph: prefix of input graph file names'
  type: File
  inputBinding:
    prefix: -g
- id: in_optional_output_gap
  doc: (optional)      output gap related reads in map step for using SRkgf to fill
    gap, [NO]
  type: boolean
  inputBinding:
    prefix: -f
- id: in_number_cpu_use
  doc: 'n_cpu: number of cpu for use, [8]'
  type: long
  inputBinding:
    prefix: -p
- id: in_kmerrcmin_max_kmer
  doc: 'kmer_R2C(min 13, max 127): kmer size used for mapping read to contig, [K]'
  type: long
  inputBinding:
    prefix: -k
- id: in_map
  doc: map -s configFile -g inputGraph [-f] [-p n_cpu -k kmer_R2C]
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- SOAPdenovo-127mer
- map
