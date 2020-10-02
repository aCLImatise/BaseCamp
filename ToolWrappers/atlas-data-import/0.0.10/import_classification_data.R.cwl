class: CommandLineTool
id: import_classification_data.R.cwl
inputs:
- id: in_config_file
  doc: Config file in .yaml format
  type: File
  inputBinding:
    prefix: --config-file
- id: in_tool
  doc: Which tool's classifiers should be imported?
  type: string
  inputBinding:
    prefix: --tool
- id: in_classifiers_output_dir
  doc: Path for directory storing imported classifiers
  type: boolean
  inputBinding:
    prefix: --classifiers-output-dir
- id: in_get_sd_rf
  doc: 'Should SDRF file(s) be downloaded? Default: FALSE'
  type: boolean
  inputBinding:
    prefix: --get-sdrf
- id: in_condensed_sd_rf
  doc: 'If --get-sdrf is set to TRUE, import condensed SDRF? By default, a normal
    version is imported. Default: FALSE'
  type: boolean
  inputBinding:
    prefix: --condensed-sdrf
- id: in_sd_rf_output_dir
  doc: Output path for imported SDRF files directory
  type: File
  inputBinding:
    prefix: --sdrf-output-dir
- id: in_get_tool_perf_table
  doc: 'Should the tool performance table be imported? Default: FALSE'
  type: boolean
  inputBinding:
    prefix: --get-tool-perf-table
- id: in_tool_perf_table_output_path
  doc: Output path for imported SDRF files directory
  type: File
  inputBinding:
    prefix: --tool-perf-table-output-path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_sd_rf_output_dir
  doc: Output path for imported SDRF files directory
  type: File
  outputBinding:
    glob: $(inputs.in_sd_rf_output_dir)
- id: out_tool_perf_table_output_path
  doc: Output path for imported SDRF files directory
  type: File
  outputBinding:
    glob: $(inputs.in_tool_perf_table_output_path)
cwlVersion: v1.1
baseCommand:
- import_classification_data.R
