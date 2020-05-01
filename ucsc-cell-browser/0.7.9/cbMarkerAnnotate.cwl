#!/usr/bin/env cwl-runner

baseCommand:
- cbMarkerAnnotate
class: CommandLineTool
cwlVersion: v1.0
id: cbmarkerannotate
inputs:
- doc: show debug messages
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: location of HPRD file, default geneAnnot/HPRD_molecular_class_081914.txt
  id: hprd
  inputBinding:
    prefix: --hprd
  type: string
- doc: location of HGNC file, default geneAnnot/hgnc_complete_set_05Dec17.txt
  id: hgnc
  inputBinding:
    prefix: --hgnc
  type: string
- doc: location of SFARI file, default geneAnnot/SFARI- Gene_genes_export06-12-2017.csv
  id: s_far_i
  inputBinding:
    prefix: --sfari
  type: string
- doc: location of OMIM file, default geneAnnot/mim2gene.txt
  id: omim
  inputBinding:
    prefix: --omim
  type: string
- doc: location of COSMIC Census file, default geneAnnot/Census_allWed_Dec__6_18_35_54_2017.tsv
  id: cosmic
  inputBinding:
    prefix: --cosmic
  type: string
- doc: location of HPO gene/disease/phenotype file, default geneAnnot/hpo_frequent_7Dec17.txt
  id: hpo
  inputBinding:
    prefix: --hpo
  type: string
- doc: location of BrainSpan LMD file, default geneAnnot/brainspan_genes.csv
  id: lmd
  inputBinding:
    prefix: --lmd
  type: string
- doc: location of MGI Homologene file, default geneAnnot/mgi_HGNC_homologene_8Dec17.txt
  id: mgi_ortho
  inputBinding:
    prefix: --mgiOrtho
  type: string
- doc: location of Eurexpress file, default geneAnnot/eurexpress_7Dec17.txt
  id: eur_express
  inputBinding:
    prefix: --eurexpress
  type: string
- doc: location of brainspan Mouse Development ISH file, default geneAnnot/brainspanMouse_9Dec17.txt
  id: brain_span_mouse_dev
  inputBinding:
    prefix: --brainspanMouseDev
  type: string
