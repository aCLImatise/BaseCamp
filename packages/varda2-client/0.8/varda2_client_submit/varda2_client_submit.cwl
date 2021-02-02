class: CommandLineTool
id: varda2_client_submit.cwl
inputs:
- id: in_disease_code
  doc: Disease indication code
  type: string
  inputBinding:
    prefix: --disease-code
- id: in_lab_sample_id
  doc: Local sample id
  type: string
  inputBinding:
    prefix: --lab-sample-id
- id: in_coverage_file
  doc: Varda coverage file
  type: File
  inputBinding:
    prefix: --coverage-file
- id: in_sample_sheet
  doc: 'Sample sheet file: sample_id, gvcf, vcf, bam'
  type: File
  inputBinding:
    prefix: --sample-sheet
- id: in_variants_file
  doc: "Varda variants file\n"
  type: File
  inputBinding:
    prefix: --variants-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- varda2-client
- submit
