#!/usr/bin/env cwl-runner

baseCommand:
- cbTool
class: CommandLineTool
cwlVersion: v1.0
id: cbtool
inputs:
- doc: matrix.mtx genes.tsv barcodes.tsv exprMatrix.tsv.gz - convert .mtx to .tsv.gz
    file
  id: cb_tool
  inputBinding:
    prefix: '- cbTool'
  type: string
- doc: mat1.tsv.gz mat2.tsv.gz exprMatrix.tsv.gz - concatenate expression matrices
  id: cb_tool
  inputBinding:
    prefix: '- cbTool'
  type: string
- doc: meta.tsv seurat/meta.tsv scanpy/meta.tsv newMeta.tsv - merge meta matrices
  id: cb_tool
  inputBinding:
    prefix: '- cbTool'
  type: string
- doc: show debug messages
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: try to fix R's mangling of various special chars to '.' in the cell IDs
  id: fix_dots
  inputBinding:
    prefix: --fixDots
  type: boolean
- doc: "only for metaCat: names of fields to order first, comma- sep, e.g. disease,age.\
    \ Not cellId, that's always the first field"
  id: first
  inputBinding:
    prefix: --first
  type: string
- doc: 'only for metaCat: names of fields to remove'
  id: del
  inputBinding:
    prefix: --del
  type: string
