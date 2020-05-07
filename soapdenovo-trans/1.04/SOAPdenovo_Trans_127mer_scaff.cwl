class: CommandLineTool
id: SOAPdenovo_Trans_127mer_scaff.cwl
inputs:
- id: g
  doc: '<string>        inputGraph: prefix of input graph file name'
  type: boolean
  inputBinding:
    prefix: -g
- id: r
  doc: (optional) output assembly RPKM statistics, [NO]
  type: boolean
  inputBinding:
    prefix: -R
- id: s
  doc: (optional)      scaffold structure exists, [NO]
  type: boolean
  inputBinding:
    prefix: -S
- id: f
  doc: (optional)      fill gaps in scaffolds, [NO]
  type: boolean
  inputBinding:
    prefix: -F
- id: p
  doc: '<int>           n_cpu: number of cpu for use, [8]'
  type: boolean
  inputBinding:
    prefix: -p
- id: l
  doc: '<int>           minContigLen: shortest contig for scaffolding, [100]'
  type: boolean
  inputBinding:
    prefix: -L
- id: t
  doc: '<int>           locusMaxOutput: output the number of transcripts no more than
    locusMaxOutput in one locus, [5]'
  type: boolean
  inputBinding:
    prefix: -t
- id: g
  doc: '<int>           gapLenDiff: allowed length difference between estimated and
    filled gap, [50]'
  type: boolean
  inputBinding:
    prefix: -G
outputs: []
cwlVersion: v1.1
baseCommand:
- SOAPdenovo-Trans-127mer
- scaff
