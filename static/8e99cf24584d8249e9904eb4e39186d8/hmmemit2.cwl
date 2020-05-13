class: CommandLineTool
id: hmmemit2.cwl
inputs:
- id: hmm_emit
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: hmm_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: a
  doc: ': write generated sequences as an alignment, not FASTA'
  type: boolean
  inputBinding:
    prefix: -a
- id: c
  doc: ': generate a single "consensus" sequence'
  type: boolean
  inputBinding:
    prefix: -c
- id: n
  doc: ': emit <n> sequences (default 10)'
  type: string
  inputBinding:
    prefix: -n
- id: o
  doc: ': save sequences in file <f>'
  type: string
  inputBinding:
    prefix: -o
- id: q
  doc: ': quiet - suppress verbose banner'
  type: boolean
  inputBinding:
    prefix: -q
- id: seed
  doc: ': set random number seed to <n>'
  type: string
  inputBinding:
    prefix: --seed
outputs: []
cwlVersion: v1.1
baseCommand:
- hmmemit2
