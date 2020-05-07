class: CommandLineTool
id: tracy_basecall.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: trace_ab1
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: p
  doc: '[ --pratio ] arg (=0.330000013)  peak ratio to call a base'
  type: boolean
  inputBinding:
    prefix: -p
- id: f
  doc: '[ --format ] arg (=json)         output format [json|tsv|fasta|fastq]'
  type: boolean
  inputBinding:
    prefix: -f
- id: o
  doc: '[ --output ] arg (="out.json")   basecalling output'
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- tracy
- basecall
