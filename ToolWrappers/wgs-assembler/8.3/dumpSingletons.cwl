class: CommandLineTool
id: dumpSingletons.cwl
inputs:
- id: in_attempt_locate_checkpoint
  doc: Attempt to locate the last checkpoint in directory 7-CGW.
  type: boolean
  inputBinding:
    prefix: -p
- id: in_look_for_checkpoints
  doc: Look for checkpoints in 'name'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_path_to_gkpstore
  doc: Path to gkpStore
  type: boolean
  inputBinding:
    prefix: -g
- id: in_checkpoint_number_load
  doc: Checkpoint number to load
  type: boolean
  inputBinding:
    prefix: -n
- id: in_use_real_uids
  doc: Use real UIDs for miniscaffolds, otherwise, UIDs start at 1230000
  type: boolean
  inputBinding:
    prefix: -U
- id: in_not_make_scaffolds
  doc: Do NOT make mini scaffolds.
  type: boolean
  inputBinding:
    prefix: -S
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dumpSingletons
