class: CommandLineTool
id: riboraptor_periodicity.cwl
inputs:
- id: in_counts
  doc: Path to counts file (if not stdin)
  type: File
  inputBinding:
    prefix: --counts
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- riboraptor
- periodicity
