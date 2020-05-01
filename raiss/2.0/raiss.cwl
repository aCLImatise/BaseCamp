#!/usr/bin/env cwl-runner

baseCommand:
- raiss
class: CommandLineTool
cwlVersion: v1.0
id: raiss
inputs:
- doc: chromosome to impute to the chr\d+ format
  id: chrom
  inputBinding:
    prefix: --chrom
  type: string
- doc: GWAS to impute to the consortia_trait format
  id: g_was
  inputBinding:
    prefix: --gwas
  type: string
- doc: reference panel location (used to determine which snp to impute)
  id: ref_folder
  inputBinding:
    prefix: --ref-folder
  type: string
- doc: Location LD correlation matrices
  id: ld_folder
  inputBinding:
    prefix: --ld-folder
  type: string
- doc: Location of the zscore files of the gwases to impute
  id: zscore_folder
  inputBinding:
    prefix: --zscore-folder
  type: string
- doc: Location of the impute zscore files
  id: output_folder
  inputBinding:
    prefix: --output-folder
  type: string
- doc: Size of the non overlapping window
  id: window_size
  inputBinding:
    prefix: --window-size
  type: string
- doc: Size of the buffer around the imputation window
  id: buffer_size
  inputBinding:
    prefix: --buffer-size
  type: string
- doc: Size of the small value added to the diagonal of the covariance matrix before
    inversion
  id: l2_regularization
  inputBinding:
    prefix: --l2-regularization
  type: string
- doc: threshold under which eigen vectors are removed for the computation of the
    pseudo inverse
  id: eigen_threshold
  inputBinding:
    prefix: --eigen-threshold
  type: string
- doc: R square (imputation quality) threshold bellow which SNPs are filtered from
    the output
  id: r2_threshold
  inputBinding:
    prefix: --R2-threshold
  type: string
- doc: end of the suffix for the reference panel files
  id: ref_panel_suffix
  inputBinding:
    prefix: --ref-panel-suffix
  type: string
