class: CommandLineTool
id: bam2wig.cwl
inputs:
- id: r
  doc: "Allows to specify a target region, e.g. 'chr3L:10-250' This option can only\
    \ be used if an index file exists See: samtools index "
  type: boolean
  inputBinding:
    prefix: -r
- id: t
  doc: A string might be provided as track name
  type: boolean
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- bam2wig
