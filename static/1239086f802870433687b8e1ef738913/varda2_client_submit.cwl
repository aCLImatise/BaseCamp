class: CommandLineTool
id: ../../../varda2_client_submit.cwl
inputs:
- id: disease_code
  doc: Disease indication code
  type: string
  inputBinding:
    prefix: --disease-code
- id: lab_sample_id
  doc: Local sample id
  type: string
  inputBinding:
    prefix: --lab-sample-id
- id: coverage_file
  doc: Varda coverage file
  type: string
  inputBinding:
    prefix: --coverage-file
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
outputs: []
cwlVersion: v1.1
baseCommand:
- varda2-client
- submit
