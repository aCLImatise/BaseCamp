class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/samsplit.cwl
inputs:
- id: write_output_files
  doc: Write output files in BAM format
  type: boolean
  inputBinding:
    prefix: -b
- id: emit_only_records
  doc: Emit only alignment records matching FLAGS
  type: string
  inputBinding:
    prefix: -f
- id: write_selected_records
  doc: Write all selected records to FILE, in addition to splitting
  type: File
  inputBinding:
    prefix: -o
- id: discard_reads_less
  doc: Discard reads with mapping quality less than NUM
  type: string
  inputBinding:
    prefix: -q
- id: compress_output_files
  doc: Compress output files at level NUM (default for BAM; none for SAM)
  type: string
  inputBinding:
    prefix: -z
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- samsplit
