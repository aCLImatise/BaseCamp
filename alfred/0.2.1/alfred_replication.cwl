class: CommandLineTool
id: alfred_replication.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: g1bbam
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: s1bam
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: s2bam
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: s3bam
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: s4bam
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: g2bam
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: q
  doc: '[ --qual ] arg (=1)          min. mapping quality'
  type: boolean
  inputBinding:
    prefix: -q
- id: w
  doc: '[ --window ] arg (=50000)    sliding window size'
  type: boolean
  inputBinding:
    prefix: -w
- id: s
  doc: '[ --step ] arg (=1000)       window offset (step size)'
  type: boolean
  inputBinding:
    prefix: -s
- id: r
  doc: '[ --reference ] arg          reference fasta file (required)'
  type: boolean
  inputBinding:
    prefix: -r
- id: o
  doc: '[ --outprefix ] arg (=pref)  output file prefix'
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- alfred
- replication
