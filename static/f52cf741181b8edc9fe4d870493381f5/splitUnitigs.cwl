class: CommandLineTool
id: splitUnitigs.cwl
inputs:
- id: in_mandatory_path_gkpstore
  doc: Mandatory path to a gkpStore.
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_mandatory_path_tigstore
  doc: Mandatory path to a tigStore (can exist or not).
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_process_unitig_iid
  doc: Process only unitig IID i
  type: string?
  inputBinding:
    prefix: -u
- id: in_split_break_occurs
  doc: "Do NOT split if the break occurs in the terminal S non-contained reads\nThe\
    \ default 0 disables this feature"
  type: long?
  inputBinding:
    prefix: -s
- id: in_recompute_consensus_sequence
  doc: Do NOT recompute consensus sequence, only generate new split unitigs
  type: boolean?
  inputBinding:
    prefix: -N
- id: in_do_modify_tigstore
  doc: Do NOT modify the tigStore
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_increase_consensus_verbosity
  doc: Increase consensus verbosity
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_generate_picture_evidence
  doc: Generate a picture of the evidence for each unitig
  type: boolean?
  inputBinding:
    prefix: -E
- id: in_version
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- splitUnitigs
