class: CommandLineTool
id: jass_preprocessing.cwl
inputs:
- id: in_diagnostic_folder
  doc: "DIAGNOSTIC_FOLDER --output-folder OUTPUT_FOLDER\n[--output-folder-1-file OUTPUT_FOLDER_1_FILE]\n\
    [--percent-sample-size PERCENT_SAMPLE_SIZE]\n[--minimum-MAF MINIMUM_MAF] [--mask-MHC\
    \ MASK_MHC]\n[--additional-masked-region ADDITIONAL_MASKED_REGION]"
  type: Directory
  inputBinding:
    prefix: --diagnostic-folder
- id: in_g_was_info
  doc: "Path to the file describing the format of the\nindividual GWASs files with\
    \ correct header"
  type: File
  inputBinding:
    prefix: --gwas-info
- id: in_ref_path
  doc: "reference panel location (used to determine which snp\nto impute)"
  type: File
  inputBinding:
    prefix: --ref-path
- id: in_output_folder
  doc: "Location of main ouput folder for preprocessed GWAS\nfiles (splitted by chromosome)"
  type: Directory
  inputBinding:
    prefix: --output-folder
- id: in_output_folder_one_file
  doc: "optional location to store the preprocessing in one\ntabular file with one\
    \ chromosome columns (useful to\ncompute LDSC correlation for instance)"
  type: File
  inputBinding:
    prefix: --output-folder-1-file
- id: in_percent_sample_size
  doc: "the proportion (between 0 and 1) of the 90th\npercentile of the sample size\
    \ used to filter the SNPs"
  type: long
  inputBinding:
    prefix: --percent-sample-size
- id: in_minimum_maf
  doc: Filter the reference panel by minimum allele frequency
  type: string
  inputBinding:
    prefix: --minimum-MAF
- id: in_mask_mhc
  doc: "Whether the MHC region should be masked or not.\ndefault is False"
  type: string
  inputBinding:
    prefix: --mask-MHC
- id: in_additional_masked_region
  doc: "List of dictionary containing coordinate of region to\nmask. For example :[{'chr':6,\
    \ 'start':50000000, 'end':\n70000000}, {'chr':6, 'start':100000000, 'end':\n120000000}]\n"
  type: long
  inputBinding:
    prefix: --additional-masked-region
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_folder
  doc: "Location of main ouput folder for preprocessed GWAS\nfiles (splitted by chromosome)"
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_folder)
- id: out_output_folder_one_file
  doc: "optional location to store the preprocessing in one\ntabular file with one\
    \ chromosome columns (useful to\ncompute LDSC correlation for instance)"
  type: File
  outputBinding:
    glob: $(inputs.in_output_folder_one_file)
cwlVersion: v1.1
baseCommand:
- jass_preprocessing
