class: CommandLineTool
id: gx_fastq_groomer.cwl
inputs:
- id: fix_id
  doc: fix inconsistent identifiers
  type: boolean
  inputBinding:
    prefix: --fix-id
- id: no_fix_id
  doc: do not fix inconsistent identifiers
  type: boolean
  inputBinding:
    prefix: --no-fix-id
outputs: []
cwlVersion: v1.1
baseCommand:
- gx-fastq-groomer
