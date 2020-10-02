class: CommandLineTool
id: cbImportCellranger.cwl
inputs:
- id: in_debug
  doc: show debug messages
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_in_dir
  doc: "input folder with the cellranger analysis output. This\nis the directory with\
    \ the two directories 'analysis'\nand 'filtered_gene_bc_matrices'"
  type: Directory
  inputBinding:
    prefix: --inDir
- id: in_outdir
  doc: output directory
  type: Directory
  inputBinding:
    prefix: --outDir
- id: in_name
  doc: name of the dataset. No spaces or special characters.
  type: string
  inputBinding:
    prefix: --name
- id: in_no_mat
  doc: "do not export the matrix again, saves some time if you\nchanged something\
    \ small since the last run\n"
  type: boolean
  inputBinding:
    prefix: --noMat
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
- cbImportCellranger
