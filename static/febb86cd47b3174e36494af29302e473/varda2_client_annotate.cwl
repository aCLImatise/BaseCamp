class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/varda2_client_annotate.cwl
inputs:
- id: sample_sheet
  doc: 'Sample sheet file: sample_id, gvcf, vcf, bam'
  type: string
  inputBinding:
    prefix: --sample-sheet
- id: variants_file
  doc: Varda variants file
  type: string
  inputBinding:
    prefix: --variants-file
- id: lab_sample_id
  doc: Local sample id
  type: string
  inputBinding:
    prefix: --lab-sample-id
outputs: []
cwlVersion: v1.1
baseCommand:
- varda2-client
- annotate
