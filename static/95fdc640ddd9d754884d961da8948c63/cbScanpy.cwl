class: CommandLineTool
id: cbScanpy.cwl
inputs:
- id: expr_matrix
  doc: 'gene-cell expression matrix file, possible formats: .csv, .h5, .mtx, .txt,
    .tab, .loom, .h5ad. Existing meta data from .loom and .h5ad will be kept and exported.'
  type: string
  inputBinding:
    prefix: --exprMatrix
- id: meta
  doc: name of cell meta data table. A table like tsv or csv format, first row has
    cellId and the cellId must match a sample name in the expression matrix. Optional
    but required if you use --inCluster. 'inMeta' in scanpy.conf
  type: string
  inputBinding:
    prefix: --meta
- id: outdir
  doc: output directory
  type: string
  inputBinding:
    prefix: --outDir
- id: name
  doc: 'internal name of dataset in cell browser. No spaces or special characters.
    default: name of output directory (-o)'
  type: string
  inputBinding:
    prefix: --name
- id: in_it
  doc: copy sample scanpy.conf to current directory
  type: boolean
  inputBinding:
    prefix: --init
- id: samples_on_rows
  doc: when reading the expression matrix from a text file, assume that samples are
    on lines (default behavior is one-gene-per-line, one-sample-per-column). Also
    in scanpy.conf.
  type: boolean
  inputBinding:
    prefix: --samplesOnRows
- id: conf_fname
  doc: config file from which settings are read, default is scanpy.conf
  type: string
  inputBinding:
    prefix: --confFname
- id: in_cluster
  doc: Do not run louvain-clustering, but use this meta field from ad.obs when calculating
    marker genes. The default is to use the louvain clustering results. Can be specified
    also in scanpy.conf.
  type: string
  inputBinding:
    prefix: --inCluster
- id: skip_matrix
  doc: do not write the scanpy matrix to the destination directory as a file exprMatrix.tsv.gz
  type: boolean
  inputBinding:
    prefix: --skipMatrix
- id: copy_matrix
  doc: Instead of reading the input matrix into scanpy and then writing it back out,
    just copy the input matrix. Only works if the input matrix is gzipped and in the
    right format and a tsv or csv file, not mtx or h5-based files.
  type: boolean
  inputBinding:
    prefix: --copyMatrix
- id: genome
  doc: when reading 10X HDF5 files, the genome to read. Default is GRCh38. Use h5ls
    <h5file> to show possible genomes
  type: string
  inputBinding:
    prefix: --genome
- id: test
  doc: run doctests
  type: boolean
  inputBinding:
    prefix: --test
- id: debug
  doc: open an iPython shell when an exception occurs. also output debug messages
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- cbScanpy
