class: CommandLineTool
id: ../../../cbImportCellranger.cwl
inputs:
- id: debug
  doc: show debug messages
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_dir
  doc: input folder with the cellranger analysis output. This is the directory with
    the two directories 'analysis' and 'filtered_gene_bc_matrices'
  type: string
  inputBinding:
    prefix: --inDir
- id: outdir
  doc: output directory
  type: string
  inputBinding:
    prefix: --outDir
- id: name
  doc: name of the dataset. No spaces or special characters.
  type: string
  inputBinding:
    prefix: --name
- id: no_mat
  doc: do not export the matrix again, saves some time if you changed something small
    since the last run
  type: boolean
  inputBinding:
    prefix: --noMat
outputs: []
cwlVersion: v1.1
baseCommand:
- cbImportCellranger
