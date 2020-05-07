class: CommandLineTool
id: cbSeurat.cwl
inputs:
- id: in_it
  doc: copy sample seurat.conf to current directory
  type: boolean
  inputBinding:
    prefix: --init
- id: expr_matrix
  doc: 'gene-cell expression matrix file, possible formats: .mtx, .txt.gz, .csv.gz,
    .rds. For .mtx, specify the directory where the matrix.mtx file is stored, e.g.
    filtered_gene_bc_matrices/hg19/'
  type: string
  inputBinding:
    prefix: --exprMatrix
- id: outdir
  doc: output directory
  type: string
  inputBinding:
    prefix: --outDir
- id: conf_fname
  doc: config file from which settings are read, default is seurat.conf
  type: string
  inputBinding:
    prefix: --confFname
- id: thread_count
  doc: Number of threads to use via the future library. Default is not use multithreading,
    so there is no requirement for future library
  type: string
  inputBinding:
    prefix: --threadCount
- id: name
  doc: internal name of dataset in cell browser. No spaces or special characters.
  type: string
  inputBinding:
    prefix: --name
- id: debug
  doc: show debug output
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- cbSeurat
