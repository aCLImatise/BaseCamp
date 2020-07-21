class: CommandLineTool
id: ../../../hmm_view.cwl
inputs:
- id: assume_separate_version
  doc: 'Assume a separate version of each state for each of  <nrcats> rate categories. '
  type: string
  inputBinding:
    prefix: -k
- id: assume_use_indel
  doc: Assume use of indel model for specified category names.
  type: string
  inputBinding:
    prefix: -i
- id: required_i_assume
  doc: (Required with -i) Tree topology to assume for indel model (.nh file).
  type: string
  inputBinding:
    prefix: -t
- id: show_only_states
  doc: Show only the states corresponding to the specified category names.
  type: string
  inputBinding:
    prefix: -C
- id: reflect_hmm_specified
  doc: Reflect the HMM about the specified 'pivot' categories. (Not yet implemented.)
  type: string
  inputBinding:
    prefix: -R
- id: show_unconnected_states
  doc: Don't show unconnected states.
  type: boolean
  inputBinding:
    prefix: -x
- id: hmm_fname
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: cat_map_fname
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- hmm_view
