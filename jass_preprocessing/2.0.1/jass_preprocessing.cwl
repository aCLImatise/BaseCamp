#!/usr/bin/env cwl-runner

baseCommand:
- jass_preprocessing
class: CommandLineTool
cwlVersion: v1.0
id: jass_preprocessing
inputs:
- doc: Path to the file describing the format of the individual GWASs files with correct
    header
  id: g_was_info
  inputBinding:
    prefix: --gwas-info
  type: string
- doc: reference panel location (used to determine which snp to impute)
  id: ref_path
  inputBinding:
    prefix: --ref-path
  type: string
- doc: Path to the folder containing the Raw GWASs summary statistic files, must end
    by '/'
  id: input_folder
  inputBinding:
    prefix: --input-folder
  type: string
- doc: Path to the reporting information on the PreProcessing such as the SNPs sample
    size distribution
  id: diagnostic_folder
  inputBinding:
    prefix: --diagnostic-folder
  type: string
- doc: Location of main ouput folder for preprocessed GWAS files (splitted by chromosome)
  id: output_folder
  inputBinding:
    prefix: --output-folder
  type: string
- doc: optional location to store the preprocessing in one tabular file with one chromosome
    columns (useful to compute LDSC correlation for instance)
  id: output_folder_1_file
  inputBinding:
    prefix: --output-folder-1-file
  type: string
- doc: the proportion (between 0 and 1) of the 90th percentile of the sample size
    used to filter the SNPs
  id: percent_sample_size
  inputBinding:
    prefix: --percent-sample-size
  type: string
- doc: Filter the reference panel by minimum allele frequency
  id: minimum_maf
  inputBinding:
    prefix: --minimum-MAF
  type: long
- doc: Whether the MHC region should be masked or not. default is False
  id: mask_mhc
  inputBinding:
    prefix: --mask-MHC
  type: string
- doc: "List of dictionary containing coordinate of region to mask. For example :[{'chr':6,\
    \ 'start':50000000, 'end': 70000000}, {'chr':6, 'start':100000000, 'end': 120000000}]"
  id: additional_masked_region
  inputBinding:
    prefix: --additional-masked-region
  type: string
