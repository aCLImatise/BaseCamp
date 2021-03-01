class: CommandLineTool
id: batchman.cwl
inputs:
- id: in_read_input_file
  doc: ': read input from <file>'
  type: File?
  inputBinding:
    prefix: -f
- id: in_logfile_write_output
  doc: ': (logfile) write output to <file>'
  type: File?
  inputBinding:
    prefix: -l
- id: in_parseonly_just_check
  doc: ': parse-only; just check the syntax, do not execute'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_quiet_mode_warnings
  doc: ': quiet mode; neither warnings nor errors are printed'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in__suppress_warnings
  doc: ': suppress warnings'
  type: boolean?
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_logfile_write_output
  doc: ': (logfile) write output to <file>'
  type: File?
  outputBinding:
    glob: $(inputs.in_logfile_write_output)
hints: []
cwlVersion: v1.1
baseCommand:
- batchman
