class: CommandLineTool
id: SOAPdenovo_127mer_map.cwl
inputs:
- id: s
  doc: 'configFile: the config file of solexa reads'
  type: string
  inputBinding:
    prefix: -s
- id: g
  doc: 'inputGraph: prefix of input graph file names'
  type: string
  inputBinding:
    prefix: -g
- id: f
  doc: (optional)      output gap related reads in map step for using SRkgf to fill
    gap, [NO]
  type: boolean
  inputBinding:
    prefix: -f
- id: p
  doc: 'n_cpu: number of cpu for use, [8]'
  type: long
  inputBinding:
    prefix: -p
- id: k
  doc: 'kmer_R2C(min 13, max 127): kmer size used for mapping read to contig, [K]'
  type: long
  inputBinding:
    prefix: -k
outputs: []
cwlVersion: v1.1
baseCommand:
- SOAPdenovo-127mer
- map
