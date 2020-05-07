class: CommandLineTool
id: jass_preprocessing.cwl
inputs:
- id: g_was_info
  doc: Path to the file describing the format of the individual GWASs files with correct
    header
  type: string
  inputBinding:
    prefix: --gwas-info
- id: ref_path
  doc: reference panel location (used to determine which snp to impute)
  type: string
  inputBinding:
    prefix: --ref-path
- id: input_folder
  doc: Path to the folder containing the Raw GWASs summary statistic files, must end
    by '/'
  type: string
  inputBinding:
    prefix: --input-folder
- id: diagnostic_folder
  doc: Path to the reporting information on the PreProcessing such as the SNPs sample
    size distribution
  type: string
  inputBinding:
    prefix: --diagnostic-folder
- id: output_folder
  doc: Location of main ouput folder for preprocessed GWAS files (splitted by chromosome)
  type: string
  inputBinding:
    prefix: --output-folder
- id: output_folder_1_file
  doc: optional location to store the preprocessing in one tabular file with one chromosome
    columns (useful to compute LDSC correlation for instance)
  type: string
  inputBinding:
    prefix: --output-folder-1-file
- id: percent_sample_size
  doc: the proportion (between 0 and 1) of the 90th percentile of the sample size
    used to filter the SNPs
  type: string
  inputBinding:
    prefix: --percent-sample-size
- id: minimum_maf
  doc: Filter the reference panel by minimum allele frequency
  type: long
  inputBinding:
    prefix: --minimum-MAF
- id: mask_mhc
  doc: Whether the MHC region should be masked or not. default is False
  type: string
  inputBinding:
    prefix: --mask-MHC
- id: additional_masked_region
  doc: "List of dictionary containing coordinate of region to mask. For example :[{'chr':6,\
    \ 'start':50000000, 'end': 70000000}, {'chr':6, 'start':100000000, 'end': 120000000}]"
  type: string
  inputBinding:
    prefix: --additional-masked-region
outputs: []
cwlVersion: v1.1
baseCommand:
- jass_preprocessing
