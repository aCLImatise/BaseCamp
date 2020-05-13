class: CommandLineTool
id: samsplit.cwl
inputs:
- id: b
  doc: Write output files in BAM format
  type: boolean
  inputBinding:
    prefix: -b
- id: f
  doc: Emit only alignment records matching FLAGS
  type: string
  inputBinding:
    prefix: -f
- id: o
  doc: Write all selected records to FILE, in addition to splitting
  type: File
  inputBinding:
    prefix: -o
- id: q
  doc: Discard reads with mapping quality less than NUM
  type: string
  inputBinding:
    prefix: -q
- id: z
  doc: Compress output files at level NUM (default for BAM; none for SAM)
  type: string
  inputBinding:
    prefix: -z
outputs: []
cwlVersion: v1.1
baseCommand:
- samsplit
