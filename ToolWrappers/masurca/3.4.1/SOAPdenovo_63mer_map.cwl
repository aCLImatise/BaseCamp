class: CommandLineTool
id: SOAPdenovo_63mer_map.cwl
inputs:
- id: in_config_file_solexa
  doc: 'configFile: the config file of solexa reads'
  type: File?
  inputBinding:
    prefix: -s
- id: in_prefix_input_graph
  doc: 'inputGraph: prefix of input graph file names'
  type: File?
  inputBinding:
    prefix: -g
- id: in_optional_output_gap
  doc: (optional)      output gap related reads in map step for using SRkgf to fill
    gap, [NO]
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_ncpu_number_cpu
  doc: 'n_cpu: number of cpu for use, [8]'
  type: long?
  inputBinding:
    prefix: -p
- id: in_max_kmer_size
  doc: 'kmer_R2C(min 13, max 63): kmer size used for mapping read to contig, [K]'
  type: long?
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
hints: []
cwlVersion: v1.1
baseCommand:
- SOAPdenovo-63mer
- map
