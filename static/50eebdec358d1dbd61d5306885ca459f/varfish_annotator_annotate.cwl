class: CommandLineTool
id: varfish_annotator_annotate.cwl
inputs:
- id: in_case_id
  doc: "The value to use for case ID\nDefault: ."
  type: boolean
  inputBinding:
    prefix: --case-id
- id: in_contig_regex
  doc: "Regular expression to use for selection of contigs\nDefault: ^(chr)?(\\d+|X|Y|M|MT)$"
  type: boolean
  inputBinding:
    prefix: --contig-regex
- id: in_annotate
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- varfish-annotator
- annotate
