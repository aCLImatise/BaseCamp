class: CommandLineTool
id: singlem_regenerate.cwl
inputs:
- id: in_input_single_m_package
  doc: "--output_singlem_package PATH --working_directory\nWORKING_DIRECTORY --euk_sequences\
    \ EUK_SEQUENCES\n--euk_taxonomy EUK_TAXONOMY\n--intermediate_archaea_graftm_package\n\
    INTERMEDIATE_ARCHAEA_GRAFTM_PACKAGE\n--intermediate_bacteria_graftm_package\n\
    INTERMEDIATE_BACTERIA_GRAFTM_PACKAGE\n--input_taxonomy INPUT_TAXONOMY\n--type_strains_list_file\
    \ TYPE_STRAINS_LIST_FILE"
  type: File
  inputBinding:
    prefix: --input_singlem_package
- id: in_full_help
  doc: ''
  type: boolean
  inputBinding:
    prefix: --full_help
- id: in_quiet
  doc: ''
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_debug
  doc: ''
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- singlem
- regenerate
