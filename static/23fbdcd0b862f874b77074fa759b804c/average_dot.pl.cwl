class: CommandLineTool
id: average_dot.pl.cwl
inputs:
- id: in_man
  doc: full documentation
  type: boolean?
  inputBinding:
    prefix: --man
- id: in_verbose
  doc: be verbose
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: be quiet
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_alignment
  doc: pp file representing the (Lo)Carna alignment
  type: File?
  inputBinding:
    prefix: --alignment
- id: in_sequences
  doc: pp files for the input sequences
  type: File?
  inputBinding:
    prefix: --sequences
- id: in_outfile
  doc: 'output file (DEFAULT: averagedot)'
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_given_threshold_option
  doc: "for each given threshold (this option can be specified more than once)\na\
    \ copy of the orginal dotplots is created where the dots are\nhighlighted that\
    \ have in the average plot a probability above the\nthreshold.\n"
  type: double?
  inputBinding:
    prefix: --threshold
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_be
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_full
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_highlighted
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_pp
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_copy
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_each
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_that
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_given
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_have
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_representing
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_in
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_var_25
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_orginal
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_average
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_dot_plots
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_is
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_plot
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_created
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_probability
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_where
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_above
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: in_dots
  doc: ''
  type: string
  inputBinding:
    position: 10
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: 'output file (DEFAULT: averagedot)'
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints: []
cwlVersion: v1.1
baseCommand:
- average-dot.pl
