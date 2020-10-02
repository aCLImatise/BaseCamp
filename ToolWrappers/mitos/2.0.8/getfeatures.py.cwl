class: CommandLineTool
id: getfeatures.py.cwl
inputs:
- id: in_linear
  doc: consider genome circular
  type: boolean
  inputBinding:
    prefix: --linear
- id: in_allow_only_features_type
  doc: allow only features of type TYPE
  type: string
  inputBinding:
    prefix: -p
- id: in_forbid_features_type
  doc: forbid all features of type TYPE
  type: string
  inputBinding:
    prefix: -P
- id: in_allow_only_features_name
  doc: allow only features with name NAME
  type: string
  inputBinding:
    prefix: -n
- id: in_forbid_features_name
  doc: forbid all features with name NAME
  type: string
  inputBinding:
    prefix: -N
- id: in_allow_only_entries
  doc: allow only entries with TAX in the taxonomy
  type: string
  inputBinding:
    prefix: -t
- id: in_forbid_entries_tax
  doc: forbid all entries with TAX in the taxonomy
  type: string
  inputBinding:
    prefix: -T
- id: in_shift_coordinates_offset
  doc: shift coordinates by OFFSET
  type: string
  inputBinding:
    prefix: -o
- id: in_gff
  doc: output gff
  type: boolean
  inputBinding:
    prefix: --gff
- id: in_output_format_namefeature
  doc: "output format: %name=feature name, %type=feature type,\n%start=feature start,\
    \ %stop=feature end, %strand=feature strand,\n%s=sequence, %a=accession, %n=name"
  type: string
  inputBinding:
    prefix: -f
- id: in_max
  doc: consider only max score part per gene
  type: boolean
  inputBinding:
    prefix: --max
- id: in_gb_slash_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_and
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_possibly
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_fas
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- getfeatures.py
