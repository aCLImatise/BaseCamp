class: CommandLineTool
id: getfeatures.py.cwl
inputs:
- id: linear
  doc: consider genome circular
  type: boolean
  inputBinding:
    prefix: --linear
- id: p
  doc: allow only features of type TYPE
  type: string
  inputBinding:
    prefix: -p
- id: p
  doc: forbid all features of type TYPE
  type: string
  inputBinding:
    prefix: -P
- id: n
  doc: allow only features with name NAME
  type: string
  inputBinding:
    prefix: -n
- id: n
  doc: forbid all features with name NAME
  type: string
  inputBinding:
    prefix: -N
- id: t
  doc: allow only entries with TAX in the taxonomy
  type: string
  inputBinding:
    prefix: -t
- id: t
  doc: forbid all entries with TAX in the taxonomy
  type: string
  inputBinding:
    prefix: -T
- id: o
  doc: shift coordinates by OFFSET
  type: string
  inputBinding:
    prefix: -o
- id: gff
  doc: output gff
  type: boolean
  inputBinding:
    prefix: --gff
- id: f
  doc: 'output format: %name=feature name, %type=feature type, %start=feature start,
    %stop=feature end, %strand=feature strand, %s=sequence, %a=accession, %n=name'
  type: string
  inputBinding:
    prefix: -f
- id: max
  doc: consider only max score part per gene
  type: boolean
  inputBinding:
    prefix: --max
outputs: []
cwlVersion: v1.1
baseCommand:
- getfeatures.py
