class: CommandLineTool
id: referenceseeker_db_init.cwl
inputs:
- id: in_output
  doc: output directory (default = current working directory)
  type: Directory
  inputBinding:
    prefix: --output
- id: in_db
  doc: Name of the new ReferenceSeeker database
  type: string
  inputBinding:
    prefix: --db
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output directory (default = current working directory)
  type: Directory
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- referenceseeker_db
- init
