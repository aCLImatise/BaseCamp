class: CommandLineTool
id: hicPlotDistVsCounts.cwl
inputs:
- id: matrices
  doc: Hi-C normalized (corrected) matrices. Each path should be separated by a space.
  type: string[]
  inputBinding:
    prefix: --matrices
- id: plot_file
  doc: 'name, -o file name File name to save the file. The given file ending will
    be used to determine the image format. The available options are: .png, .emf,
    .eps, .pdf and .svg.'
  type: File
  inputBinding:
    prefix: --plotFile
- id: labels
  doc: 'Label to assign to each matrix file. Each label should be separated by a space.
    Quote labels that contain spaces: E.g. --labels label1 "labels 2". If no labels
    are given then the file name is used.'
  type: string[]
  inputBinding:
    prefix: --labels
- id: skip_diagonal
  doc: If set, diagonal counts are not included.
  type: boolean
  inputBinding:
    prefix: --skipDiagonal
- id: maxdepth
  doc: bp     Maximum distance from diagonal to use. In other words, distances up
    to maxDepth are computed. Default is 3 million bp.
  type: long
  inputBinding:
    prefix: --maxdepth
- id: per_chr
  doc: If given, computes and display distance versus Hi-C counts plots for each chromosome
    stored in the matrices passed to --matrices.
  type: boolean
  inputBinding:
    prefix: --perchr
- id: chromosome_exclude
  doc: Exclude the given list of chromosomes. This is useful for example to exclude
    the Y chromosome. The names of the chromosomes should be separated by space.
  type: string[]
  inputBinding:
    prefix: --chromosomeExclude
- id: outfile_data
  doc: If given, the data underlying the plots is saved on this file.
  type: string
  inputBinding:
    prefix: --outFileData
- id: plot_size
  doc: 'PLOTSIZE Width and height of the plot (in inches). Default is 6*number of
    cols, 4 * number of rows. The maximum number of rows is 4. Example: --plotsize
    6 5'
  type: string
  inputBinding:
    prefix: --plotsize
outputs: []
cwlVersion: v1.1
baseCommand:
- hicPlotDistVsCounts
