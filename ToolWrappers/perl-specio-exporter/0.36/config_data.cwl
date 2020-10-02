class: CommandLineTool
id: config_data.cwl
inputs:
- id: in_config
  doc: Print the value of a config option
  type: boolean
  inputBinding:
    prefix: --config
- id: in_eval
  doc: eval() config values before setting
  type: boolean
  inputBinding:
    prefix: --eval
- id: in_feature
  doc: Print the value of a feature or all features
  type: boolean
  inputBinding:
    prefix: --feature
- id: in_module
  doc: The name of the module to configure (required)
  type: string
  inputBinding:
    prefix: --module
- id: in_set_config
  doc: =<value>   Set a config option to the given value
  type: string
  inputBinding:
    prefix: --set_config
- id: in_set_feature
  doc: =<value>  Set a feature to 'true' or 'false'
  type: string
  inputBinding:
    prefix: --set_feature
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- config_data
