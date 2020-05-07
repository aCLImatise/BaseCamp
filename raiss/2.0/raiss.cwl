class: CommandLineTool
id: raiss.cwl
inputs:
- id: chrom
  doc: chromosome to impute to the chr\d+ format
  type: string
  inputBinding:
    prefix: --chrom
- id: g_was
  doc: GWAS to impute to the consortia_trait format
  type: string
  inputBinding:
    prefix: --gwas
- id: ref_folder
  doc: reference panel location (used to determine which snp to impute)
  type: string
  inputBinding:
    prefix: --ref-folder
- id: ld_folder
  doc: Location LD correlation matrices
  type: string
  inputBinding:
    prefix: --ld-folder
- id: zscore_folder
  doc: Location of the zscore files of the gwases to impute
  type: string
  inputBinding:
    prefix: --zscore-folder
- id: output_folder
  doc: Location of the impute zscore files
  type: string
  inputBinding:
    prefix: --output-folder
- id: window_size
  doc: Size of the non overlapping window
  type: string
  inputBinding:
    prefix: --window-size
- id: buffer_size
  doc: Size of the buffer around the imputation window
  type: string
  inputBinding:
    prefix: --buffer-size
- id: l2_regularization
  doc: Size of the small value added to the diagonal of the covariance matrix before
    inversion
  type: string
  inputBinding:
    prefix: --l2-regularization
- id: eigen_threshold
  doc: threshold under which eigen vectors are removed for the computation of the
    pseudo inverse
  type: string
  inputBinding:
    prefix: --eigen-threshold
- id: r2_threshold
  doc: R square (imputation quality) threshold bellow which SNPs are filtered from
    the output
  type: string
  inputBinding:
    prefix: --R2-threshold
- id: ref_panel_suffix
  doc: end of the suffix for the reference panel files
  type: string
  inputBinding:
    prefix: --ref-panel-suffix
outputs: []
cwlVersion: v1.1
baseCommand:
- raiss
