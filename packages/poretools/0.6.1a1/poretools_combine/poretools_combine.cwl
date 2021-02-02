class: CommandLineTool
id: poretools_combine.cwl
inputs:
- id: in_quiet
  doc: Do not output warnings to stderr
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_name_output_tar
  doc: The name of the output TAR archive for the set of FAST5 files.
  type: long
  inputBinding:
    prefix: -o
- id: in_files
  doc: The input FAST5 files.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- poretools
- combine
