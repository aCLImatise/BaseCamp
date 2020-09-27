class: CommandLineTool
id: mixcr_exportAlignmentsPretty.cwl
inputs:
- id: in_filter
  doc: Custom filter
  type: string
  inputBinding:
    prefix: --filter
- id: in_verbose
  doc: Verbose warning messages.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_gene
  doc: Output full gene sequence
  type: boolean
  inputBinding:
    prefix: --gene
- id: in_limit_before
  doc: Limit number of alignments before filtering
  type: long
  inputBinding:
    prefix: --limit-before
- id: in_chains
  doc: Filter export to a specific protein chain gene (e.g. TRA or IGH).
  type: string
  inputBinding:
    prefix: --chains
- id: in_descriptions
  doc: Print descriptions
  type: boolean
  inputBinding:
    prefix: --descriptions
- id: in_cdr_three_equals
  doc: Output only alignments where CDR3 exactly equals to given sequence
  type: long
  inputBinding:
    prefix: --cdr3-equals
- id: in_force_overwrite
  doc: Force overwrite of output file(s).
  type: File
  inputBinding:
    prefix: --force-overwrite
- id: in_feature
  doc: Output only alignments which contain a corresponding gene feature
  type: string
  inputBinding:
    prefix: --feature
- id: in_read_ids
  doc: List of read ids to export
  type: string
  inputBinding:
    prefix: --read-ids
- id: in_limit
  doc: Limit number of filtered alignments; no more than N alignments will be
  type: long
  inputBinding:
    prefix: --limit
- id: in_read_contains
  doc: Output only alignments where target read contains a given substring
  type: string
  inputBinding:
    prefix: --read-contains
- id: in_skip
  doc: Number of output alignments to skip
  type: long
  inputBinding:
    prefix: --skip
- id: in_top
  doc: Output only top hits
  type: boolean
  inputBinding:
    prefix: --top
- id: in_nw
  doc: ''
  type: boolean
  inputBinding:
    prefix: -nw
- id: in_a_dft
  doc: ''
  type: boolean
  inputBinding:
    prefix: -adft
- id: in_outputted
  doc: -nw, --no-warnings     Suppress all warning messages.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force_overwrite
  doc: Force overwrite of output file(s).
  type: File
  outputBinding:
    glob: $(inputs.in_force_overwrite)
cwlVersion: v1.1
baseCommand:
- mixcr
- exportAlignmentsPretty
