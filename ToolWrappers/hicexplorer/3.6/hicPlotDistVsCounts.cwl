class: CommandLineTool
id: hicPlotDistVsCounts.cwl
inputs:
- id: in_matrices
  doc: "Hi-C normalized (corrected) matrices. Each path should\nbe separated by a\
    \ space."
  type: string[]
  inputBinding:
    prefix: --matrices
- id: in_plot_file
  doc: "name, -o file name\nFile name to save the file. The given file ending will\n\
    be used to determine the image format. The available\noptions are: .png, .emf,\
    \ .eps, .pdf and .svg."
  type: File?
  inputBinding:
    prefix: --plotFile
- id: in_labels
  doc: "Label to assign to each matrix file. Each label should\nbe separated by a\
    \ space. Quote labels that contain\nspaces: E.g. --labels label1 \"labels 2\"\
    . If no labels\nare given then the file name is used."
  type: string[]
  inputBinding:
    prefix: --labels
- id: in_skip_diagonal
  doc: If set, diagonal counts are not included.
  type: boolean?
  inputBinding:
    prefix: --skipDiagonal
- id: in_maxdepth
  doc: "bp     Maximum distance from diagonal to use. In other words,\ndistances up\
    \ to maxDepth are computed. Default is 3\nmillion bp."
  type: long?
  inputBinding:
    prefix: --maxdepth
- id: in_per_chr
  doc: "If given, computes and display distance versus Hi-C\ncounts plots for each\
    \ chromosome stored in the\nmatrices passed to --matrices."
  type: boolean?
  inputBinding:
    prefix: --perchr
- id: in_chromosome_exclude
  doc: "Exclude the given list of chromosomes. This is useful\nfor example to exclude\
    \ the Y chromosome. The names of\nthe chromosomes should be separated by space."
  type: string[]
  inputBinding:
    prefix: --chromosomeExclude
- id: in_outfile_data
  doc: "If given, the data underlying the plots is saved on\nthis file."
  type: File?
  inputBinding:
    prefix: --outFileData
- id: in_plot_size
  doc: "PLOTSIZE\nWidth and height of the plot (in inches). Default is\n6*number of\
    \ cols, 4 * number of rows. The maximum\nnumber of rows is 4. Example: --plotsize\
    \ 6 5"
  type: long?
  inputBinding:
    prefix: --plotsize
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hicexplorer:3.6--py_0
cwlVersion: v1.1
baseCommand:
- hicPlotDistVsCounts
