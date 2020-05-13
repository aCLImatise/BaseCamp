class: CommandLineTool
id: phyluce_snp_prep_interval_list_file_for_picard.cwl
inputs:
- id: bed
  doc: The BED file to filter.
  type: string
  inputBinding:
    prefix: --bed
- id: bam
  doc: The BED file to filter.
  type: string
  inputBinding:
    prefix: --bam
- id: output
  doc: The output BED file
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_snp_prep_interval_list_file_for_picard
