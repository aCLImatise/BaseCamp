class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/MotifRaptor_preprocess.cwl
inputs:
- id: g_was_summary
  doc: GWAS summary statistic file
  type: string
  inputBinding:
    prefix: --gwas_summary
- id: column_numbers
  doc: 'provide six column numbers for information in such order: ID,CHR,POS,A1,A2,SCORE
    eg. 1,2,3,4,5,6'
  type: string
  inputBinding:
    prefix: --column_numbers
- id: score_type
  doc: 'Score type in GWAS summary statistic file: pvalue or zscore or chisquare'
  type: string
  inputBinding:
    prefix: --score_type
- id: threshold
  doc: threads for pvalue - default 5E-8
  type: string
  inputBinding:
    prefix: --threshold
outputs: []
cwlVersion: v1.1
baseCommand:
- MotifRaptor
- preprocess
