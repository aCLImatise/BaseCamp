class: CommandLineTool
id: addFeatureToMatrix.cwl
inputs:
- id: in_matrix
  doc: 'deeptools matrix (default: None)'
  type: string?
  inputBinding:
    prefix: --matrix
- id: in_output
  doc: 'output matrix (default: None)'
  type: string?
  inputBinding:
    prefix: --output
- id: in_feature_dot_tables
  doc: "gene id tables or name based tables, tables should be\nspace-separated. (default:\
    \ None)"
  type: string[]
  inputBinding:
    prefix: --feature.tables
- id: in_annotation_feature
  doc: "annotation file can be filtered by a feature such as\ngene, exon or transcript\
    \ (default: None)"
  type: File?
  inputBinding:
    prefix: --annotationFeature
- id: in_filtered_genome_gtf_output_file
  doc: "saving filtered annotation file if --annotationFeature\n(default: None)"
  type: File?
  inputBinding:
    prefix: --filteredGenomeGtfOutputFile
- id: in_genome_gtf
  doc: "genome annotation (gtf) to map peaks to closest gene.\nWill be filtered through\
    \ '--annotationFeature'\n(default: None)"
  type: string?
  inputBinding:
    prefix: --genomeGtf
- id: in_feature_names
  doc: "A list of features of interest from gene id tables or\nname based tables (default:\
    \ ['log2(FC)'])"
  type: string[]
  inputBinding:
    prefix: --featureNames
- id: in_feature_id_column
  doc: "name of the column includes ids/names (default:\nGeneID)"
  type: string?
  inputBinding:
    prefix: --featureIdColumn
- id: in_reference_point
  doc: "If closest TSS or TES is needed, otherwise closest\ngene body will be found\
    \ (default: None)"
  type: string?
  inputBinding:
    prefix: --referencePoint
- id: in_closest_genes_output
  doc: "A bed file to save the closest genes (default: None)\n"
  type: File?
  inputBinding:
    prefix: --closestGenesOutput
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- addFeatureToMatrix
