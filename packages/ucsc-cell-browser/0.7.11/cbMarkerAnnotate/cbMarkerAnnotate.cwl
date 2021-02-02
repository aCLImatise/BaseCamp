class: CommandLineTool
id: cbMarkerAnnotate.cwl
inputs:
- id: in_debug
  doc: show debug messages
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_hprd
  doc: location of HPRD file, default
  type: File
  inputBinding:
    prefix: --hprd
- id: in_cosmic
  doc: location of COSMIC Census file, default
  type: File
  inputBinding:
    prefix: --cosmic
- id: in_geneannot_slash_hprd_molecular_class_zero_eight_one_nine_one_four_dot_txt
  doc: --hgnc=HGNC           location of HGNC file, default
  type: long
  inputBinding:
    position: 0
- id: in_geneannot_slash_hgnc_complete_set_zero_five_dec_one_seven_dot_txt
  doc: --sfari=SFARI         location of SFARI file, default geneAnnot/SFARI-
  type: long
  inputBinding:
    position: 1
- id: in_gene_genes_export_zero_six_one_two_two_zero_one_seven_dot_csv
  doc: --omim=OMIM           location of OMIM file, default geneAnnot/mim2gene.txt
  type: long
  inputBinding:
    position: 2
- id: in_geneannot_slash_census_all_wed_dec_six_one_eight_three_five_five_four_two_zero_one_seven_dot_tsv
  doc: --hpo=HPO             location of HPO gene/disease/phenotype file, default
  type: long
  inputBinding:
    position: 3
- id: in_geneannot_slash_hpo_frequent_seven_dec_one_seven_dot_txt
  doc: --lmd=LMD             location of BrainSpan LMD file, default
  type: long
  inputBinding:
    position: 4
- id: in_geneannot_slash_brain_span_genes_dot_csv
  doc: --mgiOrtho=MGIORTHO   location of MGI Homologene file, default
  type: string
  inputBinding:
    position: 5
- id: in_geneannot_slash_mgi_hgnc_homologene_eight_dec_one_seven_dot_txt
  doc: --eurexpress=EUREXPRESS
  type: long
  inputBinding:
    position: 6
- id: in_geneannot_slash_eur_express_seven_dec_one_seven_dot_txt
  doc: --brainspanMouseDev=BRAINSPANMOUSEDEV
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cbMarkerAnnotate
