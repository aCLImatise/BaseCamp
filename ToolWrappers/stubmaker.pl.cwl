class: CommandLineTool
id: stubmaker.pl.cwl
inputs:
- id: in_verbose_outputbe_quiet
  doc: Verbose Outputbe quiet
  type: boolean
  inputBinding:
    prefix: -v
- id: in_output_directory
  doc: Output directory
  type: Directory
  inputBinding:
    prefix: -d
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: Output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory)
cwlVersion: v1.1
baseCommand:
- stubmaker.pl
