class: CommandLineTool
id: MotifRaptor_preprocess.cwl
inputs:
- id: in_g_was_summary
  doc: GWAS summary statistic file
  type: File
  inputBinding:
    prefix: --gwas_summary
- id: in_column_numbers
  doc: "provide six column numbers for information in such\norder: ID,CHR,POS,A1,A2,SCORE\
    \ eg. 1,2,3,4,5,6"
  type: long
  inputBinding:
    prefix: --column_numbers
- id: in_score_type
  doc: "Score type in GWAS summary statistic file: pvalue or\nzscore or chisquare"
  type: File
  inputBinding:
    prefix: --score_type
- id: in_threshold
  doc: "threads for pvalue - default 5E-8\n"
  type: double
  inputBinding:
    prefix: --threshold
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- MotifRaptor
- preprocess
