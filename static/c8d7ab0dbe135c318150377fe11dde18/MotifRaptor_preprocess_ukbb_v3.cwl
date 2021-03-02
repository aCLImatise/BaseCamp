class: CommandLineTool
id: MotifRaptor_preprocess_ukbb_v3.cwl
inputs:
- id: in_g_was_summary
  doc: GWAS summary statistic - UKBB v3 tsv filename
  type: File?
  inputBinding:
    prefix: --gwas_summary
- id: in_threshold
  doc: "threads for pvalue - default 5E-8\n"
  type: double?
  inputBinding:
    prefix: --threshold
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- MotifRaptor
- preprocess_ukbb_v3
