class: CommandLineTool
id: ../../../samtools_merge.cwl
inputs:
- id: sort_by_read
  doc: sort by read names
  type: boolean
  inputBinding:
    prefix: -n
- id: attach_rg_tag
  doc: attach RG tag (inferred from file names)
  type: boolean
  inputBinding:
    prefix: -r
- id: uncompressed_bam_output
  doc: uncompressed BAM output
  type: boolean
  inputBinding:
    prefix: -u
- id: merge_file_specified
  doc: merge file in the specified region STR [all]
  type: string
  inputBinding:
    prefix: -R
- id: copy_header_file
  doc: copy the header in FILE to <out.bam> [in1.bam]
  type: File
  inputBinding:
    prefix: -h
- id: nr
  doc: ''
  type: boolean
  inputBinding:
    prefix: -nr
- id: out_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_one_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_two_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- samtools
- merge
