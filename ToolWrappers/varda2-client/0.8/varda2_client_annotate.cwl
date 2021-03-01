class: CommandLineTool
id: varda2_client_annotate.cwl
inputs:
- id: in_sample_sheet
  doc: 'Sample sheet file: sample_id, gvcf, vcf, bam'
  type: File?
  inputBinding:
    prefix: --sample-sheet
- id: in_variants_file
  doc: Varda variants file
  type: File?
  inputBinding:
    prefix: --variants-file
- id: in_lab_sample_id
  doc: "Local sample id\n"
  type: string?
  inputBinding:
    prefix: --lab-sample-id
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- varda2-client
- annotate
