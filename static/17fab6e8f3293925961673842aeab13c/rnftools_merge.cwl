class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rnftools_merge.cwl
inputs:
- id: input_fastq_files
  doc: input FASTQ files
  type: string[]
  inputBinding:
    prefix: -i
- id: mode_mergeing_files
  doc: mode for mergeing files (single-end / paired-end-bwa / paired-end-bfast)
  type: string
  inputBinding:
    prefix: -m
- id: output_prefix
  doc: output prefix
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- rnftools
- merge
