class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/referenceseeker_db_init.cwl
inputs:
- id: output
  doc: output directory (default = current working directory)
  type: string
  inputBinding:
    prefix: --output
- id: db
  doc: Name of the new ReferenceSeeker database
  type: string
  inputBinding:
    prefix: --db
outputs: []
cwlVersion: v1.1
baseCommand:
- referenceseeker_db
- init
