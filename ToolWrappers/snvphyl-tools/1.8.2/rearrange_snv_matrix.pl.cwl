class: CommandLineTool
id: rearrange_snv_matrix.pl.cwl
inputs:
- id: in_tree
  doc: "[required]\nNewick input file describing the phylogenetic tree."
  type: boolean
  inputBinding:
    prefix: --tree
- id: in_out_dir
  doc: "[required]\nThe directory for output files."
  type: Directory
  inputBinding:
    prefix: --out-dir
- id: in_phy
  doc: "[required]\nInput snv_align.phy file."
  type: boolean
  inputBinding:
    prefix: --phy
- id: in_matrix
  doc: "[required]\nInput matrix.csv file."
  type: boolean
  inputBinding:
    prefix: --matrix
- id: in_keep_tmp
  doc: "[optional]\nKeep the temp log upon exiting the script."
  type: boolean
  inputBinding:
    prefix: --keep-tmp
- id: in_convert
  doc: "[optional]\nConvert the branch lengths to an estimate of the total SNV number."
  type: boolean
  inputBinding:
    prefix: --convert
- id: in_root
  doc: "[optional]\nThe name of the strain to use as the root for the phylogenetic\
    \ tree."
  type: boolean
  inputBinding:
    prefix: --root
- id: in_sort
  doc: "[optional]\nEither 'increasing' or 'decreasing', indicating the order in which\n\
    to sort nodes in the output phylogenetic tree."
  type: boolean
  inputBinding:
    prefix: --sort
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: "[required]\nThe directory for output files."
  type: Directory
  outputBinding:
    glob: $(inputs.in_out_dir)
cwlVersion: v1.1
baseCommand:
- rearrange_snv_matrix.pl
