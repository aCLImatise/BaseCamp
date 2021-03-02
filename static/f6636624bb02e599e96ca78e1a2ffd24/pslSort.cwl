class: CommandLineTool
id: pslSort.cwl
inputs:
- id: in_no_head
  doc: Do not write psl header.
  type: boolean?
  inputBinding:
    prefix: -nohead
- id: in_verbose
  doc: Set verbosity level, higher for more output. Default is 1.
  type: long?
  inputBinding:
    prefix: -verbose
- id: in_adding
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_this
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_alignments
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_and
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dirs
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_enough
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_g_two_g
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_in_dirs
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_one
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_one_vertical_line_two
  doc: ''
  type: long?
  inputBinding:
    position: 1
- id: in_across
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_first
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_second
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_space
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_will
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_into
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_or
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_outfile
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_sort
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_var_22
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_var_23
  doc: ''
  type: long
  inputBinding:
    position: 3
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_all
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_outfile_dot
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_stages
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_tempdir
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_var_29
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_genome_to_genome
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_in_dir
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_pass
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_alignment
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_device
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_respectively
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_var_38
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_on
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_must
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_limit
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: in_program
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
- pslSort
