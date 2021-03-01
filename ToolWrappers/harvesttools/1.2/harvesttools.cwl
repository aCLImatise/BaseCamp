class: CommandLineTool
id: harvesttools.cwl
inputs:
- id: in__filter_name
  doc: ',<filter name>,"<description>"'
  type: string?
  inputBinding:
    prefix: -i
- id: in_multifasta_alignment_output
  doc: <multi-fasta alignment output (concatenated LCBs)>
  type: string?
  inputBinding:
    prefix: -B
- id: in_midpoint_re_root
  doc: (reroot the tree at its midpoint after loading)
  type: string?
  inputBinding:
    prefix: --midpoint-reroot
- id: in_update_branch_values
  doc: /1 (update the branch values to reflect genome length)
  type: long?
  inputBinding:
    prefix: -o
- id: in_show_this_help
  doc: (show this help)
  type: string?
  inputBinding:
    prefix: -v
- id: in_quiet_mode
  doc: (quiet mode)
  type: boolean?
  inputBinding:
    prefix: -q
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- harvesttools
