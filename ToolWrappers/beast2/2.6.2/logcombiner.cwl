class: CommandLineTool
id: logcombiner.cwl
inputs:
- id: in_log
  doc: specify the name of the log file, each log file must be specified with separate
    -log option
  type: File
  inputBinding:
    prefix: -log
- id: in_specify_log_file
  doc: specify log file to write into (default output is stdout)
  type: File
  inputBinding:
    prefix: -o
- id: in_specify_percentage_considered
  doc: specify the number PERCENTAGE of lines in the log file considered to be burnin
    (default 10)
  type: long
  inputBinding:
    prefix: -b
- id: in_dir
  doc: specify particle directory -- used for particle filtering in BEASTLabs only
    -- if defined only one log must be specified and the -n option specified
  type: Directory
  inputBinding:
    prefix: -dir
- id: in_specify_number_ignored
  doc: specify the number of particles, ignored if -dir is not defined
  type: long
  inputBinding:
    prefix: -n
- id: in_resample
  doc: specify number of states to resample
  type: long
  inputBinding:
    prefix: -resample
- id: in_decimal
  doc: flag to indicate numbers should converted from scientific into decimal format
  type: boolean
  inputBinding:
    prefix: -decimal
- id: in_re_number
  doc: flag to indicate output states should be renumbered
  type: boolean
  inputBinding:
    prefix: -renumber
- id: in_options
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_specify_log_file
  doc: specify log file to write into (default output is stdout)
  type: File
  outputBinding:
    glob: $(inputs.in_specify_log_file)
cwlVersion: v1.1
baseCommand:
- logcombiner
