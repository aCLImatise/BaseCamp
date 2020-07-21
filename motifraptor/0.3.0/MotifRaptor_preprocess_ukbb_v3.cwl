class: CommandLineTool
id: ../../../MotifRaptor_preprocess_ukbb_v3.cwl
inputs:
- id: g_was_summary
  doc: GWAS summary statistic - UKBB v3 tsv filename
  type: string
  inputBinding:
    prefix: --gwas_summary
- id: threshold
  doc: threads for pvalue - default 5E-8
  type: string
  inputBinding:
    prefix: --threshold
outputs: []
cwlVersion: v1.1
baseCommand:
- MotifRaptor
- preprocess_ukbb_v3
