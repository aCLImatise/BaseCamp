class: CommandLineTool
id: samsplit.cwl
inputs:
- id: in_write_output_files
  doc: Write output files in BAM format
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_emit_only_alignment
  doc: Emit only alignment records matching FLAGS
  type: string?
  inputBinding:
    prefix: -f
- id: in_write_selected_records
  doc: Write all selected records to FILE, in addition to splitting
  type: File?
  inputBinding:
    prefix: -o
- id: in_discard_reads_less
  doc: Discard reads with mapping quality less than NUM
  type: long?
  inputBinding:
    prefix: -q
- id: in_compress_output_files
  doc: Compress output files at level NUM (default for BAM; none for SAM)
  type: long?
  inputBinding:
    prefix: -z
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- samsplit
