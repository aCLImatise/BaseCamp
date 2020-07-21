class: CommandLineTool
id: ../../../getfeatures.py.cwl
inputs:
- id: linear
  doc: consider genome circular
  type: boolean
  inputBinding:
    prefix: --linear
- id: allow_only_features_type
  doc: allow only features of type TYPE
  type: string
  inputBinding:
    prefix: -p
- id: forbid_features_type
  doc: forbid all features of type TYPE
  type: string
  inputBinding:
    prefix: -P
- id: allow_only_features_name
  doc: allow only features with name NAME
  type: string
  inputBinding:
    prefix: -n
- id: forbid_features_name
  doc: forbid all features with name NAME
  type: string
  inputBinding:
    prefix: -N
- id: allow_only_entries
  doc: allow only entries with TAX in the taxonomy
  type: string
  inputBinding:
    prefix: -t
- id: forbid_entries_tax
  doc: forbid all entries with TAX in the taxonomy
  type: string
  inputBinding:
    prefix: -T
- id: shift_coordinates_offset
  doc: shift coordinates by OFFSET
  type: string
  inputBinding:
    prefix: -o
- id: gff
  doc: output gff
  type: boolean
  inputBinding:
    prefix: --gff
- id: output_format_namefeature
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
- id: gb_slash_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: and
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: possibly
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: fas
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- getfeatures.py
