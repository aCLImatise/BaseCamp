class: CommandLineTool
id: varfish_annotator_annotate.cwl
inputs:
- id: case_id
  doc: 'The value to use for case ID Default: .'
  type: boolean
  inputBinding:
    prefix: --case-id
- id: contig_regex
  doc: 'Regular expression to use for selection of contigs Default: ^(chr)?(\d+|X|Y|M|MT)$'
  type: boolean
  inputBinding:
    prefix: --contig-regex
- id: set_id
  doc: 'The value to use for set ID Default: .'
  type: boolean
  inputBinding:
    prefix: --set-id
outputs: []
cwlVersion: v1.1
baseCommand:
- varfish-annotator
- annotate
