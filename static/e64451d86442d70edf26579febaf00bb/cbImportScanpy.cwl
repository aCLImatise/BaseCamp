class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/cbImportScanpy.cwl
inputs:
- id: debug
  doc: show debug messages
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_file
  doc: input .h5ad file. Required parameter
  type: string
  inputBinding:
    prefix: --inFile
- id: proc
  doc: when exporting, do not use the raw input data, instead use the normalized and
    corrected matrix scanpy. This has no effect if the anndata.raw attribute is not
    used in the anndata object
  type: boolean
  inputBinding:
    prefix: --proc
- id: output_directory_required
  doc: Output directory. Required parameter
  type: string
  inputBinding:
    prefix: --outDir
- id: name
  doc: Dataset name for generated cellbrowser.conf. If not specified, the last component
    of -o will be used.
  type: string
  inputBinding:
    prefix: --name
- id: html_dir
  doc: do not only convert to tab-sep files but also run cbBuild toconvert the data
    and add the dataset under htmlDir
  type: string
  inputBinding:
    prefix: --htmlDir
- id: port
  doc: 'only with --htmlDir: start webserver on port to serve htmlDir'
  type: string
  inputBinding:
    prefix: --port
- id: marker_field
  doc: 'name of the marker genes field, default: rank_genes_groups'
  type: string
  inputBinding:
    prefix: --markerField
- id: cluster_field
  doc: if no marker genes are present, use this field to calculate them. Default is
    to try a list of common field names, like 'Cluster' or 'louvain' and a few others
  type: string
  inputBinding:
    prefix: --clusterField
- id: skip_matrix
  doc: do not convert the matrix, saves time if the same one has been exported before
    to the same directory
  type: boolean
  inputBinding:
    prefix: --skipMatrix
- id: in_filename
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: var_11
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: dataset_name
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- cbImportScanpy
