class: CommandLineTool
id: raiss.cwl
inputs:
- id: in_chrom
  doc: chromosome to impute to the chr\d+ format
  type: string?
  inputBinding:
    prefix: --chrom
- id: in_g_was
  doc: GWAS to impute to the consortia_trait format
  type: string?
  inputBinding:
    prefix: --gwas
- id: in_ref_folder
  doc: "reference panel location (used to determine which snp\nto impute)"
  type: Directory?
  inputBinding:
    prefix: --ref-folder
- id: in_ld_folder
  doc: Location LD correlation matrices
  type: Directory?
  inputBinding:
    prefix: --ld-folder
- id: in_zscore_folder
  doc: Location of the zscore files of the gwases to impute
  type: Directory?
  inputBinding:
    prefix: --zscore-folder
- id: in_output_folder
  doc: Location of the impute zscore files
  type: Directory?
  inputBinding:
    prefix: --output-folder
- id: in_window_size
  doc: Size of the non overlapping window
  type: long?
  inputBinding:
    prefix: --window-size
- id: in_buffer_size
  doc: Size of the buffer around the imputation window
  type: long?
  inputBinding:
    prefix: --buffer-size
- id: in_l_two_regularization
  doc: "Size of the small value added to the diagonal of the\ncovariance matrix before\
    \ inversion"
  type: long?
  inputBinding:
    prefix: --l2-regularization
- id: in_eigen_threshold
  doc: "threshold under which eigen vectors are removed for\nthe computation of the\
    \ pseudo inverse"
  type: string?
  inputBinding:
    prefix: --eigen-threshold
- id: in_r_two_threshold
  doc: "R square (imputation quality) threshold bellow which\nSNPs are filtered from\
    \ the output"
  type: long?
  inputBinding:
    prefix: --R2-threshold
- id: in_ref_panel_suffix
  doc: "end of the suffix for the reference panel files\n"
  type: string?
  inputBinding:
    prefix: --ref-panel-suffix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_folder
  doc: Location of the impute zscore files
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_folder)
hints: []
cwlVersion: v1.1
baseCommand:
- raiss
