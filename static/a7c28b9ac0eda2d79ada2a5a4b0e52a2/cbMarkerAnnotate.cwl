class: CommandLineTool
id: cbMarkerAnnotate.cwl
inputs:
- id: debug
  doc: show debug messages
  type: boolean
  inputBinding:
    prefix: --debug
- id: hprd
  doc: location of HPRD file, default geneAnnot/HPRD_molecular_class_081914.txt
  type: string
  inputBinding:
    prefix: --hprd
- id: hgnc
  doc: location of HGNC file, default geneAnnot/hgnc_complete_set_05Dec17.txt
  type: string
  inputBinding:
    prefix: --hgnc
- id: s_far_i
  doc: location of SFARI file, default geneAnnot/SFARI- Gene_genes_export06-12-2017.csv
  type: string
  inputBinding:
    prefix: --sfari
- id: omim
  doc: location of OMIM file, default geneAnnot/mim2gene.txt
  type: string
  inputBinding:
    prefix: --omim
- id: cosmic
  doc: location of COSMIC Census file, default geneAnnot/Census_allWed_Dec__6_18_35_54_2017.tsv
  type: string
  inputBinding:
    prefix: --cosmic
- id: hpo
  doc: location of HPO gene/disease/phenotype file, default geneAnnot/hpo_frequent_7Dec17.txt
  type: string
  inputBinding:
    prefix: --hpo
- id: lmd
  doc: location of BrainSpan LMD file, default geneAnnot/brainspan_genes.csv
  type: string
  inputBinding:
    prefix: --lmd
- id: mgi_ortho
  doc: location of MGI Homologene file, default geneAnnot/mgi_HGNC_homologene_8Dec17.txt
  type: string
  inputBinding:
    prefix: --mgiOrtho
- id: eur_express
  doc: location of Eurexpress file, default geneAnnot/eurexpress_7Dec17.txt
  type: string
  inputBinding:
    prefix: --eurexpress
- id: brain_span_mouse_dev
  doc: location of brainspan Mouse Development ISH file, default geneAnnot/brainspanMouse_9Dec17.txt
  type: string
  inputBinding:
    prefix: --brainspanMouseDev
outputs: []
cwlVersion: v1.1
baseCommand:
- cbMarkerAnnotate
