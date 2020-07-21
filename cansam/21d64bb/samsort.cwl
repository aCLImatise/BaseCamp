class: CommandLineTool
id: ../../../samsort.cwl
inputs:
- id: write_output_bam
  doc: Write output in BAM format
  type: boolean
  inputBinding:
    prefix: -b
- id: check_input_sorted
  doc: Check whether input is already sorted
  type: boolean
  inputBinding:
    prefix: -c
- id: compare_records_according
  doc: Compare records according to comparison function CMP [location]
  type: string
  inputBinding:
    prefix: -f
- id: merge_alreadysorted_files
  doc: Merge already-sorted files
  type: boolean
  inputBinding:
    prefix: -m
- id: write_output_file
  doc: Write output to FILE rather than standard output
  type: File
  inputBinding:
    prefix: -o
- id: use_size_amount
  doc: Use SIZE amount of in-memory working space
  type: long
  inputBinding:
    prefix: -S
- id: write_temporary_files
  doc: Write temporary files to DIR [$TMPDIR or /tmp]
  type: string
  inputBinding:
    prefix: -T
- id: compress_output_level
  doc: 'Compress output at level NUMBER [SAM: no compression; BAM: 6]'
  type: string
  inputBinding:
    prefix: -z
- id: bcm
  doc: ''
  type: boolean
  inputBinding:
    prefix: -bcm
- id: location
  doc: Order by chromosome then position (and then read name)
  type: string
  inputBinding:
    position: 0
- id: qname
  doc: Order by read (query) name then first/second ordering flags
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- samsort
