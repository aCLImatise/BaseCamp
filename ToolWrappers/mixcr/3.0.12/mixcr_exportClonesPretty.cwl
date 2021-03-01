class: CommandLineTool
id: mixcr_exportClonesPretty.cwl
inputs:
- id: in_verbose
  doc: Verbose warning messages.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_limit_before
  doc: Limit number of alignments before filtering
  type: long?
  inputBinding:
    prefix: --limitBefore
- id: in_chains
  doc: Filter export to a specific protein chain gene (e.g. TRA or IGH).
  type: string?
  inputBinding:
    prefix: --chains
- id: in_cdr_three_equals
  doc: "Only output clones where CDR3 (not whole clonal sequence) exactly equals to\n\
    given sequence"
  type: long?
  inputBinding:
    prefix: --cdr3-equals
- id: in_force_overwrite
  doc: Force overwrite of output file(s).
  type: File?
  inputBinding:
    prefix: --force-overwrite
- id: in_clone_ids
  doc: List of clone ids to export
  type: string?
  inputBinding:
    prefix: --clone-ids
- id: in_limit
  doc: Limit number of filtered alignments; no more than N alignments will be
  type: long?
  inputBinding:
    prefix: --limit
- id: in_clonal_sequence_contains
  doc: Only output clones where target clonal sequence contains sub-sequence.
  type: string?
  inputBinding:
    prefix: --clonal-sequence-contains
- id: in_skip
  doc: Number of output alignments to skip
  type: long?
  inputBinding:
    prefix: --skip
- id: in_nw
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -nw
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
  type: File?
  outputBinding:
    glob: $(inputs.in_force_overwrite)
hints: []
cwlVersion: v1.1
baseCommand:
- mixcr
- exportClonesPretty
