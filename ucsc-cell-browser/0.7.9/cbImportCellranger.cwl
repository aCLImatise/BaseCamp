#!/usr/bin/env cwl-runner

baseCommand:
- cbImportCellranger
class: CommandLineTool
cwlVersion: v1.0
id: cbimportcellranger
inputs:
- doc: ''
  id: cell_ranger
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: output
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: to
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: cell_browser
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: format
  inputBinding:
    position: 4
  type: string
- doc: ''
  id: and
  inputBinding:
    position: 5
  type: string
- doc: ''
  id: create
  inputBinding:
    position: 6
  type: string
- doc: ''
  id: a
  inputBinding:
    position: 7
  type: string
- doc: ''
  id: cell_ranger_conf
  inputBinding:
    position: 8
  type: string
- doc: ''
  id: file
  inputBinding:
    position: 9
  type: File
- doc: show debug messages
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: input folder with the cellranger analysis output. This is the directory with
    the two directories 'analysis' and 'filtered_gene_bc_matrices'
  id: in_dir
  inputBinding:
    prefix: --inDir
  type: string
- doc: output directory
  id: outdir
  inputBinding:
    prefix: --outDir
  type: string
- doc: name of the dataset. No spaces or special characters.
  id: name
  inputBinding:
    prefix: --name
  type: string
- doc: do not export the matrix again, saves some time if you changed something small
    since the last run
  id: no_mat
  inputBinding:
    prefix: --noMat
  type: boolean
