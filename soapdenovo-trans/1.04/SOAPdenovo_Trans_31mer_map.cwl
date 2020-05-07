class: CommandLineTool
id: SOAPdenovo_Trans_31mer_map.cwl
inputs:
- id: s
  doc: '<string>        configFile: the config file of reads'
  type: boolean
  inputBinding:
    prefix: -s
- id: g
  doc: '<string>        inputGraph: prefix of input graph file name'
  type: boolean
  inputBinding:
    prefix: -g
- id: f
  doc: (optional)      output gap related reads for SRkgf to fill gap, [NO]
  type: boolean
  inputBinding:
    prefix: -f
- id: r
  doc: (optional)      output assembly RPKM statistics, [NO]
  type: boolean
  inputBinding:
    prefix: -R
- id: p
  doc: '<int>           n_cpu: number of cpu for use, [8]'
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- SOAPdenovo-Trans-31mer
- map
