class: CommandLineTool
id: hmm_view.cwl
inputs:
- id: in_assume_separate_version
  doc: "Assume a separate version of each state for each of\n<nrcats> rate categories."
  type: string
  inputBinding:
    prefix: -k
- id: in_assume_use_indel
  doc: Assume use of indel model for specified category names.
  type: string
  inputBinding:
    prefix: -i
- id: in_required_tree_topology
  doc: "(Required with -i) Tree topology to assume for indel\nmodel (.nh file)."
  type: File
  inputBinding:
    prefix: -t
- id: in_show_states_corresponding
  doc: "Show only the states corresponding to the specified\ncategory names."
  type: string
  inputBinding:
    prefix: -C
- id: in_reflect_hmm_implemented
  doc: "Reflect the HMM about the specified 'pivot' categories.\n(Not yet implemented.)"
  type: string
  inputBinding:
    prefix: -R
- id: in_show_unconnected_states
  doc: Don't show unconnected states.
  type: boolean
  inputBinding:
    prefix: -x
- id: in_hmm_fname
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_cat_map_fname
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hmm_view
