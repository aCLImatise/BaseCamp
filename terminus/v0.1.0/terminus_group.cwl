class: CommandLineTool
id: terminus_group.cwl
inputs:
- id: dir
  doc: directory to read input from
  type: string
  inputBinding:
    prefix: --dir
- id: min_spread
  doc: 'the minimum spread a transcript must exhibit to enable an attached edge to
    be a collapse candidate [default: 0.1]'
  type: long
  inputBinding:
    prefix: --min-spread
- id: out
  doc: prefix where output would be written
  type: string
  inputBinding:
    prefix: --out
- id: seed
  doc: 'The allowable difference between the weights of transcripts in same equivalence
    classes to treat them as identical [default: 10]'
  type: string
  inputBinding:
    prefix: --seed
- id: tolerance
  doc: 'The allowable difference between the weights of transcripts in same equivalence
    classes to treat them as identical [default: 0.001]'
  type: string
  inputBinding:
    prefix: --tolerance
outputs: []
cwlVersion: v1.1
baseCommand:
- terminus
- group
