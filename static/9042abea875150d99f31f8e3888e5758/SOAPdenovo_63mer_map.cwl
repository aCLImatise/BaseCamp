class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/SOAPdenovo_63mer_map.cwl
inputs:
- id: configfile_config_file
  doc: 'configFile: the config file of solexa reads'
  type: string
  inputBinding:
    prefix: -s
- id: inputgraph_prefix_input
  doc: 'inputGraph: prefix of input graph file names'
  type: string
  inputBinding:
    prefix: -g
- id: optional_output_gap
  doc: (optional)      output gap related reads in map step for using SRkgf to fill
    gap, [NO]
  type: boolean
  inputBinding:
    prefix: -f
- id: ncpu_number_cpu
  doc: 'n_cpu: number of cpu for use, [8]'
  type: long
  inputBinding:
    prefix: -p
- id: kmerrcmin_max_kmer
  doc: 'kmer_R2C(min 13, max 63): kmer size used for mapping read to contig, [K]'
  type: long
  inputBinding:
    prefix: -k
outputs: []
cwlVersion: v1.1
baseCommand:
- SOAPdenovo-63mer
- map
