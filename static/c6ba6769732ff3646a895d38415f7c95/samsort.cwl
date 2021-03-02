class: CommandLineTool
id: samsort.cwl
inputs:
- id: in_write_output_bam
  doc: Write output in BAM format
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_check_input_already
  doc: Check whether input is already sorted
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_compare_records_according
  doc: Compare records according to comparison function CMP [location]
  type: string?
  inputBinding:
    prefix: -f
- id: in_merge_alreadysorted_files
  doc: Merge already-sorted files
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_write_output_output
  doc: Write output to FILE rather than standard output
  type: File?
  inputBinding:
    prefix: -o
- id: in_use_size_amount
  doc: Use SIZE amount of in-memory working space
  type: long?
  inputBinding:
    prefix: -S
- id: in_write_temporary_files
  doc: Write temporary files to DIR [$TMPDIR or /tmp]
  type: string?
  inputBinding:
    prefix: -T
- id: in_compress_output_level
  doc: 'Compress output at level NUMBER [SAM: no compression; BAM: 6]'
  type: long?
  inputBinding:
    prefix: -z
- id: in_bcm
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -bcm
- id: in_location
  doc: Order by chromosome then position (and then read name)
  type: string
  inputBinding:
    position: 0
- id: in_qname
  doc: Order by read (query) name then first/second ordering flags
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_write_output_output
  doc: Write output to FILE rather than standard output
  type: File?
  outputBinding:
    glob: $(inputs.in_write_output_output)
hints: []
cwlVersion: v1.1
baseCommand:
- samsort
