class: CommandLineTool
id: unpack200.cwl
inputs:
- id: in_override_transmitted_hinttrue
  doc: "{h}, --deflate-hint={h}     override transmitted deflate hint:\ntrue, false,\
    \ or keep (default)"
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_remove_pack_file
  doc: remove input file after unpacking
  type: boolean?
  inputBinding:
    prefix: --remove-pack-file
- id: in_verbose
  doc: increase program verbosity
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: set verbosity to lowest level
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_output_given_log
  doc: "{F}, --log-file={F}         output to the given log file,\nor '-' for standard\
    \ output (default)"
  type: File?
  inputBinding:
    prefix: -l
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_given_log
  doc: "{F}, --log-file={F}         output to the given log file,\nor '-' for standard\
    \ output (default)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_given_log)
hints: []
cwlVersion: v1.1
baseCommand:
- unpack200
