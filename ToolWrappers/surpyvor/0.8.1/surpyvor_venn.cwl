class: CommandLineTool
id: surpyvor_venn.cwl
inputs:
- id: in_verbose
  doc: Print out more information while running.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_vcfs_containing_variants
  doc: "[VARIANTS [VARIANTS ...]]\nvcfs containing structural variants"
  type: boolean?
  inputBinding:
    prefix: --variants
- id: in_names
  doc: "[NAMES [NAMES ...]]\nNames of datasets in --variants"
  type: boolean?
  inputBinding:
    prefix: --names
- id: in_distance
  doc: maximum distance between test and truth call
  type: string?
  inputBinding:
    prefix: --distance
- id: in_minlength
  doc: Minimum length of SVs to be taken into account
  type: long?
  inputBinding:
    prefix: --minlength
- id: in_ignore_type
  doc: Ignore the type of the structural variant
  type: boolean?
  inputBinding:
    prefix: --ignore_type
- id: in_keep_merged
  doc: Save merged vcf file
  type: File?
  inputBinding:
    prefix: --keepmerged
- id: in_plot_out
  doc: Name of output plot
  type: string?
  inputBinding:
    prefix: --plotout
- id: in_var_8
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- surpyvor
- venn
