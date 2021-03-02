class: CommandLineTool
id: seeker.pl.cwl
inputs:
- id: in_none_input_file
  doc: ', none         - Input file (can be multiple, each with own flag)'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_output
  doc: '- Output file name (default StrainSeeker_output)'
  type: File?
  inputBinding:
    prefix: --output
- id: in_dir
  doc: '- Path to database directory'
  type: boolean?
  inputBinding:
    prefix: --dir
- id: in_verbose
  doc: '- Print out more of the working process'
  type: boolean?
  inputBinding:
    prefix: -verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: '- Output file name (default StrainSeeker_output)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- seeker.pl
