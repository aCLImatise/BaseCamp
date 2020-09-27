class: CommandLineTool
id: samcat.cwl
inputs:
- id: in_write_output_bam
  doc: Write output in BAM format (equivalent to -Obam)
  type: boolean
  inputBinding:
    prefix: -b
- id: in_display_alignment_records
  doc: Display only alignment records matching FLAGS
  type: string
  inputBinding:
    prefix: -f
- id: in_suppress_headers_output
  doc: Suppress '@' headers in the output
  type: boolean
  inputBinding:
    prefix: -n
- id: in_write_file_output
  doc: Write to FILE rather than standard output
  type: File
  inputBinding:
    prefix: -o
- id: in_write_output_specified
  doc: Write output in the specified FORMAT
  type: string
  inputBinding:
    prefix: -O
- id: in_display_file_information
  doc: Display file information and statistics
  type: boolean
  inputBinding:
    prefix: -v
- id: in_b_nv
  doc: ''
  type: boolean
  inputBinding:
    prefix: -bnv
- id: in_bam
  doc: Compressed binary BAM format
  type: string
  inputBinding:
    position: 0
- id: in_hex
  doc: SAM format, with flags displayed in hexadecimal
  type: string
  inputBinding:
    position: 1
- id: in_text
  doc: SAM format, with flags displayed as readable strings
  type: string
  inputBinding:
    position: 2
- id: in_ub_am
  doc: Uncompressed binary BAM format
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_write_file_output
  doc: Write to FILE rather than standard output
  type: File
  outputBinding:
    glob: $(inputs.in_write_file_output)
cwlVersion: v1.1
baseCommand:
- samcat
