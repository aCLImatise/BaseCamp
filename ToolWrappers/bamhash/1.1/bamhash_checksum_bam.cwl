class: CommandLineTool
id: bamhash_checksum_bam.cwl
inputs:
- id: in_debug
  doc: Debug mode. Prints full hex for each read to stdout
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_no_read_names
  doc: Do not use read names as part of checksum
  type: boolean
  inputBinding:
    prefix: --no-readnames
- id: in_no_quality
  doc: Do not use read quality as part of checksum
  type: boolean
  inputBinding:
    prefix: --no-quality
- id: in_no_paired
  doc: Bam files were not generated with paired-end reads
  type: boolean
  inputBinding:
    prefix: --no-paired
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bamhash_checksum_bam
