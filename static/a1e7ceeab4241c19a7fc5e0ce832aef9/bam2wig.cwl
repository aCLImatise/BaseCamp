class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bam2wig.cwl
inputs:
- id: allows_specify_region
  doc: "Allows to specify a target region, e.g. 'chr3L:10-250' This option can only\
    \ be used if an index file exists See: samtools index "
  type: boolean
  inputBinding:
    prefix: -r
- id: string_might_provided
  doc: A string might be provided as track name
  type: boolean
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- bam2wig
