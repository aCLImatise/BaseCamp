class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/samcat.cwl
inputs:
- id: write_output_bam
  doc: Write output in BAM format (equivalent to -Obam)
  type: boolean
  inputBinding:
    prefix: -b
- id: display_only_records
  doc: Display only alignment records matching FLAGS
  type: string
  inputBinding:
    prefix: -f
- id: suppress_headers_output
  doc: Suppress '@' headers in the output
  type: boolean
  inputBinding:
    prefix: -n
- id: write_file_output
  doc: Write to FILE rather than standard output
  type: File
  inputBinding:
    prefix: -o
- id: write_output_specified
  doc: Write output in the specified FORMAT
  type: string
  inputBinding:
    prefix: -O
- id: display_file_information
  doc: Display file information and statistics
  type: boolean
  inputBinding:
    prefix: -v
- id: b_nv
  doc: ''
  type: boolean
  inputBinding:
    prefix: -bnv
- id: bam
  doc: Compressed binary BAM format
  type: string
  inputBinding:
    position: 0
- id: hex
  doc: SAM format, with flags displayed in hexadecimal
  type: string
  inputBinding:
    position: 1
- id: text
  doc: SAM format, with flags displayed as readable strings
  type: string
  inputBinding:
    position: 2
- id: ub_am
  doc: Uncompressed binary BAM format
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- samcat
