class: CommandLineTool
id: get_distribution.pl.cwl
inputs:
- id: in_specify_distribution_mode
  doc: ": Specify distribution mode.  Must be a number selected from the\nlist below.\
    \  Default is mode 1."
  type: long?
  inputBinding:
    prefix: -m
- id: in_inputs_gtf_files
  doc: ': Inputs are gtf files instead of list files'
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_quick_load_file
  doc: ': Quick load the gtf file.  Do not check them for errors.'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_more_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -MORE_OPTIONS
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -OPTIONS
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- get_distribution.pl
