#!/usr/bin/env cwl-runner

baseCommand:
- cbImportScanpy
class: CommandLineTool
cwlVersion: v1.0
id: cbimportscanpy
inputs:
- doc: to directory with tab-separated files
  id: cb_imports_can_py
  inputBinding:
    prefix: '- cbImportScanpy'
  type: string
- doc: show debug messages
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: input .h5ad file. Required parameter
  id: in_file
  inputBinding:
    prefix: --inFile
  type: string
- doc: when exporting, do not use the raw input data, instead use the normalized and
    corrected matrix scanpy. This has no effect if the anndata.raw attribute is not
    used in the anndata object
  id: proc
  inputBinding:
    prefix: --proc
  type: boolean
- doc: Output directory. Required parameter
  id: outdir
  inputBinding:
    prefix: --outDir
  type: string
- doc: Dataset name for generated cellbrowser.conf. If not specified, the last component
    of -o will be used.
  id: name
  inputBinding:
    prefix: --name
  type: string
- doc: do not only convert to tab-sep files but also run cbBuild toconvert the data
    and add the dataset under htmlDir
  id: html_dir
  inputBinding:
    prefix: --htmlDir
  type: string
- doc: 'only with --htmlDir: start webserver on port to serve htmlDir'
  id: port
  inputBinding:
    prefix: --port
  type: string
- doc: 'name of the marker genes field, default: rank_genes_groups'
  id: marker_field
  inputBinding:
    prefix: --markerField
  type: string
- doc: if no marker genes are present, use this field to calculate them
  id: cluster_field
  inputBinding:
    prefix: --clusterField
  type: string
- doc: do not convert the matrix, saves time if the same one has been exported before
    to the same directory
  id: skip_matrix
  inputBinding:
    prefix: --skipMatrix
  type: boolean
