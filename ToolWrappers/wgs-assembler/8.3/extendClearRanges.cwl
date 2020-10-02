class: CommandLineTool
id: extendClearRanges.cwl
inputs:
- id: in_use_ckpname_checkpoint
  doc: Use ckpName as the checkpoint name
  type: string
  inputBinding:
    prefix: -c
- id: in_the_checkpoint_use
  doc: The checkpoint to use
  type: long
  inputBinding:
    prefix: -n
- id: in_the_gatekeeper_store
  doc: The gatekeeper store
  type: string
  inputBinding:
    prefix: -g
- id: in_start_specific_gap
  doc: '#        Start at a specific gap number'
  type: long
  inputBinding:
    prefix: -C
- id: in_begin_specific_scaffold
  doc: Begin at a specific scaffold
  type: string
  inputBinding:
    prefix: -b
- id: in_end_specific_scaffold
  doc: End after a specific scaffold (INCLUSIVE)
  type: string
  inputBinding:
    prefix: -e
- id: in_process_only_scaffold
  doc: Process only this scaffold
  type: string
  inputBinding:
    prefix: -o
- id: in_skip_this_scaffold
  doc: Skip this scaffold
  type: string
  inputBinding:
    prefix: -s
- id: in_process_only_gap
  doc: '#        Process only this gap'
  type: string
  inputBinding:
    prefix: -O
- id: in__skip_gap
  doc: '#        Skip this gap'
  type: string
  inputBinding:
    prefix: -S
- id: in_the_iteration_ecr
  doc: The iteration of ECR; either 1 or 2
  type: long
  inputBinding:
    prefix: -i
- id: in_load
  doc: Load gkpStore into memory
  type: boolean
  inputBinding:
    prefix: -load
- id: in_enable_verbosemultialign_debugging
  doc: Enable VERBOSE_MULTIALIGN for debugging
  type: boolean
  inputBinding:
    prefix: -V
- id: in_opts
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
- extendClearRanges
