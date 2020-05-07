class: CommandLineTool
id: addFeatureToMatrix.cwl
inputs:
- id: matrix
  doc: 'deeptools matrix (default: None)'
  type: string
  inputBinding:
    prefix: --matrix
- id: output
  doc: 'output matrix (default: None)'
  type: string
  inputBinding:
    prefix: --output
- id: feature
  doc: '.tables TABLES [TABLES ...], -t TABLES [TABLES ...] gene id tables or name
    based tables, tables should be space-separated. (default: None)'
  type: boolean
  inputBinding:
    prefix: --feature
- id: annotation_feature
  doc: 'annotation file can be filtered by a feature such as gene, exon or transcript
    (default: None)'
  type: string
  inputBinding:
    prefix: --annotationFeature
- id: filtered_genome_gtf_output_file
  doc: 'saving filtered annotation file if --annotationFeature (default: None)'
  type: string
  inputBinding:
    prefix: --filteredGenomeGtfOutputFile
- id: genome_gtf
  doc: "genome annotation (gtf) to map peaks to closest gene. Will be filtered through\
    \ '--annotationFeature' (default: None)"
  type: string
  inputBinding:
    prefix: --genomeGtf
- id: feature_names
  doc: "A list of features of interest from gene id tables or name based tables (default:\
    \ ['log2(FC)'])"
  type: string[]
  inputBinding:
    prefix: --featureNames
- id: feature_id_column
  doc: 'name of the column includes ids/names (default: GeneID)'
  type: string
  inputBinding:
    prefix: --featureIdColumn
- id: reference_point
  doc: 'If closest TSS or TES is needed, otherwise closest gene body will be found
    (default: None)'
  type: string
  inputBinding:
    prefix: --referencePoint
- id: closest_genes_output
  doc: 'A bed file to save the closest genes (default: None)'
  type: string
  inputBinding:
    prefix: --closestGenesOutput
outputs: []
cwlVersion: v1.1
baseCommand:
- addFeatureToMatrix
