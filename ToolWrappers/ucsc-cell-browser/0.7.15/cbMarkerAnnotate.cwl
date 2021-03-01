class: CommandLineTool
id: cbMarkerAnnotate.cwl
inputs:
- id: in_debug
  doc: show debug messages
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_hprd
  doc: "location of HPRD file, default\ngeneAnnot/HPRD_molecular_class_081914.txt"
  type: File?
  inputBinding:
    prefix: --hprd
- id: in_hgnc
  doc: "location of HGNC file, default\ngeneAnnot/hgnc_complete_set_05Dec17.txt"
  type: File?
  inputBinding:
    prefix: --hgnc
- id: in_s_far_i
  doc: location of SFARI file, default geneAnnot/SFARI-
  type: File?
  inputBinding:
    prefix: --sfari
- id: in_cosmic
  doc: "location of COSMIC Census file, default\ngeneAnnot/Census_allWed_Dec__6_18_35_54_2017.tsv"
  type: File?
  inputBinding:
    prefix: --cosmic
- id: in_hpo
  doc: "location of HPO gene/disease/phenotype file, default\ngeneAnnot/hpo_frequent_7Dec17.txt"
  type: File?
  inputBinding:
    prefix: --hpo
- id: in_lmd
  doc: "location of BrainSpan LMD file, default\ngeneAnnot/brainspan_genes.csv"
  type: File?
  inputBinding:
    prefix: --lmd
- id: in_mgi_ortho
  doc: "location of MGI Homologene file, default\ngeneAnnot/mgi_HGNC_homologene_8Dec17.txt"
  type: File?
  inputBinding:
    prefix: --mgiOrtho
- id: in_eur_express
  doc: "location of Eurexpress file, default\ngeneAnnot/eurexpress_7Dec17.txt"
  type: File?
  inputBinding:
    prefix: --eurexpress
- id: in_brain_span_mouse_dev
  doc: "location of brainspan Mouse Development ISH file,\ndefault geneAnnot/brainspanMouse_9Dec17.txt\n"
  type: File?
  inputBinding:
    prefix: --brainspanMouseDev
- id: in_gene_genes_export_zero_six_one_two_two_zero_one_seven_dot_csv
  doc: --omim=OMIM           location of OMIM file, default geneAnnot/mim2gene.txt
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ucsc-cell-browser:0.7.15--py_0
cwlVersion: v1.1
baseCommand:
- cbMarkerAnnotate
