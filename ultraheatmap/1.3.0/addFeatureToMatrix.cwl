#!/usr/bin/env cwl-runner

baseCommand:
- addFeatureToMatrix
class: CommandLineTool
cwlVersion: v1.0
id: addfeaturetomatrix
inputs:
- doc: 'deeptools matrix (default: None)'
  id: matrix
  inputBinding:
    prefix: --matrix
  type: string
- doc: 'output matrix (default: None)'
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: '.tables TABLES [TABLES ...], -t TABLES [TABLES ...] gene id tables or name
    based tables, tables should be space-separated. (default: None)'
  id: feature
  inputBinding:
    prefix: --feature
  type: boolean
- doc: 'annotation file can be filtered by a feature such as gene, exon or transcript
    (default: None)'
  id: annotation_feature
  inputBinding:
    prefix: --annotationFeature
  type: string
- doc: 'saving filtered annotation file if --annotationFeature (default: None)'
  id: filtered_genome_gtf_output_file
  inputBinding:
    prefix: --filteredGenomeGtfOutputFile
  type: string
- doc: "genome annotation (gtf) to map peaks to closest gene. Will be filtered through\
    \ '--annotationFeature' (default: None)"
  id: genome_gtf
  inputBinding:
    prefix: --genomeGtf
  type: string
- doc: "A list of features of interest from gene id tables or name based tables (default:\
    \ ['log2(FC)'])"
  id: feature_names
  inputBinding:
    prefix: --featureNames
  type:
    items: string
    type: array
- doc: 'name of the column includes ids/names (default: GeneID)'
  id: feature_id_column
  inputBinding:
    prefix: --featureIdColumn
  type: string
- doc: 'If closest TSS or TES is needed, otherwise closest gene body will be found
    (default: None)'
  id: reference_point
  inputBinding:
    prefix: --referencePoint
  type: string
- doc: 'A bed file to save the closest genes (default: None)'
  id: closest_genes_output
  inputBinding:
    prefix: --closestGenesOutput
  type: string
