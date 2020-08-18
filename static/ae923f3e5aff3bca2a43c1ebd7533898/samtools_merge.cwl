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
- id: overwrite_output_bam
  doc: overwrite the output BAM if exist
  type: boolean
  inputBinding:
    prefix: -f
- id: compress_level
  doc: compress level 1
  type: boolean
  inputBinding:
    prefix: '-1'
- id: compression_level_from
  doc: compression level, from 0 to 9 [-1]
  type: long
  inputBinding:
    prefix: -l
- id: at
  doc: number of BAM compression threads [0]
  type: long
  inputBinding:
    prefix: -@
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
