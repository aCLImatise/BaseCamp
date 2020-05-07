class: CommandLineTool
id: umi_reformat_sra_fastq.cwl
inputs:
- id: debug
  doc: 'More output for debugging (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- umi_reformat_sra_fastq
