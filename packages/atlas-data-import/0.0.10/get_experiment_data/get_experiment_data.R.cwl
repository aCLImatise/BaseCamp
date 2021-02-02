class: CommandLineTool
id: get_experiment_data.R.cwl
inputs:
- id: in_access_sion_code
  doc: Accession code of the data set to be extracted
  type: string
  inputBinding:
    prefix: --accesssion-code
- id: in_config_file
  doc: Config file in .yaml format
  type: File
  inputBinding:
    prefix: --config-file
- id: in_matrix_type
  doc: Type of expression data to download. Must be one of 'raw', 'filtered', 'TPM'
    or 'CPM'
  type: string
  inputBinding:
    prefix: --matrix-type
- id: in_decorated_rows
  doc: 'Should the decorated version of row names be downloaded? Deafult: FALSE'
  type: boolean
  inputBinding:
    prefix: --decorated-rows
- id: in_output_dir_name
  doc: Name of the output directory containing study data. Default directory name
    is the provided accession code
  type: Directory
  inputBinding:
    prefix: --output-dir-name
- id: in_use_default_expr_names
  doc: 'Should default (non 10x-type) file names be used for expression data? Default:
    FALSE'
  type: boolean
  inputBinding:
    prefix: --use-default-expr-names
- id: in_exp_data_dir
  doc: Output name for expression data directory
  type: Directory
  inputBinding:
    prefix: --exp-data-dir
- id: in_get_sd_rf
  doc: 'Should SDRF file(s) be downloaded? Default: FALSE'
  type: boolean
  inputBinding:
    prefix: --get-sdrf
- id: in_get_condensed_sd_rf
  doc: 'Should condensed SDRF file(s) be downloaded? Default: FALSE'
  type: boolean
  inputBinding:
    prefix: --get-condensed-sdrf
- id: in_get_idf
  doc: 'Should IDF file(s) be downloaded? Default: FALSE'
  type: boolean
  inputBinding:
    prefix: --get-idf
- id: in_get_exp_design
  doc: 'Should experimental design file be downloaded? Default: FALSE'
  type: boolean
  inputBinding:
    prefix: --get-exp-design
- id: in_get_marker_genes
  doc: 'Should marker gene file(s) be downloaded? Default: FALSE'
  type: boolean
  inputBinding:
    prefix: --get-marker-genes
- id: in_number_of_clusters
  doc: Number of clusters for marker gene file
  type: long
  inputBinding:
    prefix: --number-of-clusters
- id: in_use_full_names
  doc: 'Should non-expression data files be named with full file names? Default: FALSE'
  type: boolean
  inputBinding:
    prefix: --use-full-names
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir_name
  doc: Name of the output directory containing study data. Default directory name
    is the provided accession code
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir_name)
- id: out_exp_data_dir
  doc: Output name for expression data directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_exp_data_dir)
cwlVersion: v1.1
baseCommand:
- get_experiment_data.R
