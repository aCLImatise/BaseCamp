class: CommandLineTool
id: plot_bmprobs.cwl
inputs:
- id: in_quiet
  doc: ''
  type: string?
  inputBinding:
    prefix: --quiet
- id: in_read
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_2
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_plot_bm_probs
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_probability
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_verbose
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_where
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_generating
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_script
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: in_is
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_requires
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_supposed
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_position
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_positions
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_statistic
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_with
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_base
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_contain
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_program
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_r
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_lines
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_match
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_second
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_first
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_prob_abilites
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_and
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_dimension
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_var_35
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_form
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: in_write
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: in_i
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: in_plot
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: in_as
  doc: ''
  type: string
  inputBinding:
    position: 11
- id: in_j
  doc: ''
  type: string
  inputBinding:
    position: 11
- id: in_ps
  doc: ''
  type: string
  inputBinding:
    position: 12
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- plot-bmprobs
