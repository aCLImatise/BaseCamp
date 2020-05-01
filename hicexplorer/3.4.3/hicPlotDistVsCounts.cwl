#!/usr/bin/env cwl-runner

baseCommand:
- hicPlotDistVsCounts
class: CommandLineTool
cwlVersion: v1.0
id: hicplotdistvscounts
inputs:
- doc: Hi-C normalized (corrected) matrices. Each path should be separated by a space.
  id: matrices
  inputBinding:
    prefix: --matrices
  type:
    items: string
    type: array
- doc: 'name, -o file name File name to save the file. The given file ending will
    be used to determine the image format. The available options are: .png, .emf,
    .eps, .pdf and .svg.'
  id: plot_file
  inputBinding:
    prefix: --plotFile
  type: File
- doc: 'Label to assign to each matrix file. Each label should be separated by a space.
    Quote labels that contain spaces: E.g. --labels label1 "labels 2". If no labels
    are given then the file name is used.'
  id: labels
  inputBinding:
    prefix: --labels
  type:
    items: string
    type: array
- doc: If set, diagonal counts are not included.
  id: skip_diagonal
  inputBinding:
    prefix: --skipDiagonal
  type: boolean
- doc: bp     Maximum distance from diagonal to use. In other words, distances up
    to maxDepth are computed. Default is 3 million bp.
  id: maxdepth
  inputBinding:
    prefix: --maxdepth
  type: long
- doc: If given, computes and display distance versus Hi-C counts plots for each chromosome
    stored in the matrices passed to --matrices.
  id: per_chr
  inputBinding:
    prefix: --perchr
  type: boolean
- doc: Exclude the given list of chromosomes. This is useful for example to exclude
    the Y chromosome. The names of the chromosomes should be separated by space.
  id: chromosome_exclude
  inputBinding:
    prefix: --chromosomeExclude
  type:
    items: string
    type: array
- doc: If given, the data underlying the plots is saved on this file.
  id: outfile_data
  inputBinding:
    prefix: --outFileData
  type: string
- doc: 'PLOTSIZE Width and height of the plot (in inches). Default is 6*number of
    cols, 4 * number of rows. The maximum number of rows is 4. Example: --plotsize
    6 5'
  id: plot_size
  inputBinding:
    prefix: --plotsize
  type: string
