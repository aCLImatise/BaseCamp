class: CommandLineTool
id: metaxa2_si.cwl
inputs:
- id: in_input_taxonomy_file
  doc: ': Input taxonomy file from Metaxa2'
  type: string?
  inputBinding:
    prefix: -i
- id: in__output_file
  doc: ': Output file'
  type: File?
  inputBinding:
    prefix: -o
- id: in_taxonomic_level_performing
  doc: ': Taxonomic level for performing inference (1 = domain -> 7 = species), default
    = 7 (species level)'
  type: string?
  inputBinding:
    prefix: -l
- id: in_percent_identity_cutoff
  doc: ': Percent identity cutoff for allowing inference, default = 97'
  type: string?
  inputBinding:
    prefix: -c
- id: in_list_all
  doc: ': Lists all possibilities for sequence entries with multiple possible inferences,
    off (F) by default'
  type: string?
  inputBinding:
    prefix: --list_all
- id: in_multiple
  doc: ": Decides how to handle entries with multiple possible inferences, default\
    \ = keep\n('assign' will randomly assign the entry to a possible taxa)"
  type: string?
  inputBinding:
    prefix: --multiple
- id: in_low_identity
  doc: ': Decides how to handle entries with sequence identity below cutoff, default
    = keep'
  type: string?
  inputBinding:
    prefix: --low_identity
- id: in_help
  doc: ': displays this help message'
  type: boolean?
  inputBinding:
    prefix: --help
- id: in_bugs
  doc: ': displays the bug fixes and known bugs in this version of Metaxa'
  type: boolean?
  inputBinding:
    prefix: --bugs
- id: in_license
  doc: ': displays licensing information'
  type: boolean?
  inputBinding:
    prefix: --license
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__output_file
  doc: ': Output file'
  type: File?
  outputBinding:
    glob: $(inputs.in__output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- metaxa2_si
