#!/usr/bin/env cwl-runner

baseCommand:
- cbScanpy
class: CommandLineTool
cwlVersion: v1.0
id: cbscanpy
inputs:
- doc: 'gene-cell expression matrix file, possible formats: .csv, .h5, .mtx, .txt,
    .tab, .loom, .h5ad. Existing meta data from .loom and .h5ad will be kept and exported.'
  id: expr_matrix
  inputBinding:
    prefix: --exprMatrix
  type: string
- doc: name of cell meta data table. A table like tsv or csv format, first row has
    cellId and the cellId must match a sample name in the expression matrix. Optional
    but required if you use --inCluster. 'inMeta' in scanpy.conf
  id: meta
  inputBinding:
    prefix: --meta
  type: string
- doc: output directory
  id: outdir
  inputBinding:
    prefix: --outDir
  type: string
- doc: 'internal name of dataset in cell browser. No spaces or special characters.
    default: name of output directory (-o)'
  id: name
  inputBinding:
    prefix: --name
  type: string
- doc: copy sample scanpy.conf to current directory
  id: in_it
  inputBinding:
    prefix: --init
  type: boolean
- doc: when reading the expression matrix from a text file, assume that samples are
    on lines (default behavior is one-gene-per-line, one-sample-per-column). Also
    in scanpy.conf.
  id: samples_on_rows
  inputBinding:
    prefix: --samplesOnRows
  type: boolean
- doc: config file from which settings are read, default is scanpy.conf
  id: conf_fname
  inputBinding:
    prefix: --confFname
  type: string
- doc: Do not run louvain-clustering, but use this meta field from ad.obs when calculating
    marker genes. The default is to use the louvain clustering results. Can be specified
    also in scanpy.conf.
  id: in_cluster
  inputBinding:
    prefix: --inCluster
  type: string
- doc: do not write the scanpy matrix to the destination directory as a file exprMatrix.tsv.gz
  id: skip_matrix
  inputBinding:
    prefix: --skipMatrix
  type: boolean
- doc: Instead of reading the input matrix into scanpy and then writing it back out,
    just copy the input matrix. Only works if the input matrix is gzipped and in the
    right format and a tsv or csv file, not mtx or h5-based files.
  id: copy_matrix
  inputBinding:
    prefix: --copyMatrix
  type: boolean
- doc: when reading 10X HDF5 files, the genome to read. Default is GRCh38. Use h5ls
    <h5file> to show possible genomes
  id: genome
  inputBinding:
    prefix: --genome
  type: string
- doc: run doctests
  id: test
  inputBinding:
    prefix: --test
  type: boolean
- doc: open an iPython shell when an exception occurs. also output debug messages
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
