class: CommandLineTool
id: ../../../singlem_regenerate.cwl
inputs:
- id: in_input_single_m_package
  doc: ''
  type: File
  inputBinding:
    prefix: --input_singlem_package
- id: in_output_single_m_package
  doc: ''
  type: File
  inputBinding:
    prefix: --output_singlem_package
- id: in_e_uk_taxonomy
  doc: ''
  type: string
  inputBinding:
    prefix: --euk_taxonomy
- id: in_var_3
  doc: ''
  type: boolean
  inputBinding:
    prefix: --intermediate_archaea_graftm_package
- id: in_type_strains_list_file
  doc: ''
  type: File
  inputBinding:
    prefix: --type_strains_list_file
- id: in_debug
  doc: output debug information
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_quiet
  doc: only output errors
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_full_help
  doc: display all help options
  type: boolean
  inputBinding:
    prefix: --full_help
- id: in_e_uk_sequences
  doc: ''
  type: string
  inputBinding:
    prefix: --euk_sequences
- id: in_var_9
  doc: ''
  type: string
  inputBinding:
    prefix: --intermediate_bacteria_graftm_package
- id: in_input_taxonomy
  doc: ''
  type: string
  inputBinding:
    prefix: --input_taxonomy
- id: in__intermediatebacteriagraftmpackage
  doc: --intermediate_bacteria_graftm_package
  type: string
  inputBinding:
    position: 0
- id: in__inputtaxonomy_inputtaxonomy
  doc: --input_taxonomy INPUT_TAXONOMY
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- singlem
- regenerate
