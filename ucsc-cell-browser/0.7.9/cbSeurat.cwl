#!/usr/bin/env cwl-runner

baseCommand:
- cbSeurat
class: CommandLineTool
cwlVersion: v1.0
id: cbseurat
inputs:
- doc: copy sample seurat.conf to current directory
  id: in_it
  inputBinding:
    prefix: --init
  type: boolean
- doc: 'gene-cell expression matrix file, possible formats: .mtx, .txt.gz, .csv.gz,
    .rds. For .mtx, specify the directory where the matrix.mtx file is stored, e.g.
    filtered_gene_bc_matrices/hg19/'
  id: expr_matrix
  inputBinding:
    prefix: --exprMatrix
  type: string
- doc: output directory
  id: outdir
  inputBinding:
    prefix: --outDir
  type: string
- doc: config file from which settings are read, default is seurat.conf
  id: conf_fname
  inputBinding:
    prefix: --confFname
  type: string
- doc: Number of threads to use via the future library. Default is not use multithreading,
    so there is no requirement for future library
  id: thread_count
  inputBinding:
    prefix: --threadCount
  type: string
- doc: internal name of dataset in cell browser. No spaces or special characters.
  id: name
  inputBinding:
    prefix: --name
  type: string
- doc: show debug output
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
