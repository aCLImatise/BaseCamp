class: CommandLineTool
id: cbSeurat.cwl
inputs:
- id: in_in_it
  doc: copy sample seurat.conf to current directory
  type: boolean
  inputBinding:
    prefix: --init
- id: in_expr_matrix
  doc: "gene-cell expression matrix file, possible formats:\n.mtx, .txt.gz, .csv.gz,\
    \ .rds. For .mtx, specify the\ndirectory where the matrix.mtx file is stored,\
    \ e.g.\nfiltered_gene_bc_matrices/hg19/"
  type: File
  inputBinding:
    prefix: --exprMatrix
- id: in_outdir
  doc: output directory
  type: Directory
  inputBinding:
    prefix: --outDir
- id: in_conf_fname
  doc: "config file from which settings are read, default is\nseurat.conf"
  type: File
  inputBinding:
    prefix: --confFname
- id: in_thread_count
  doc: "Number of threads to use via the future library.\nDefault is not use multithreading,\
    \ so there is no\nrequirement for future library"
  type: long
  inputBinding:
    prefix: --threadCount
- id: in_name
  doc: "internal name of dataset in cell browser. No spaces or\nspecial characters."
  type: string
  inputBinding:
    prefix: --name
- id: in_debug
  doc: show debug output
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- cbSeurat
