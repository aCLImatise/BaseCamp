class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/iu_gen_matching_fastq_files.cwl
inputs:
- id: identifier_tested
  doc: Use this flag to indicate that you tested your identifier.
  type: boolean
  inputBinding:
    prefix: --identifier-tested
- id: sequential
  doc: Your identifier code parses an integer value that can link pairs, and is incremental
    throughout the file.
  type: boolean
  inputBinding:
    prefix: --sequential
- id: r_one
  doc: ''
  type: File
  inputBinding:
    prefix: --r1
- id: r_two
  doc: ''
  type: File
  inputBinding:
    prefix: --r2
outputs: []
cwlVersion: v1.1
baseCommand:
- iu-gen-matching-fastq-files
