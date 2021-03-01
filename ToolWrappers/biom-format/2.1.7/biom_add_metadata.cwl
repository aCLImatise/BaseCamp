class: CommandLineTool
id: biom_add_metadata.cwl
inputs:
- id: in_input_fp
  doc: The input BIOM table  [required]
  type: File?
  inputBinding:
    prefix: --input-fp
- id: in_output_fp
  doc: The output BIOM table  [required]
  type: File?
  inputBinding:
    prefix: --output-fp
- id: in_sample_metadata_fp
  doc: "The sample metadata mapping file (will add\nsample metadata to the input BIOM\
    \ table, if\nprovided)."
  type: File?
  inputBinding:
    prefix: --sample-metadata-fp
- id: in_observation_metadata_fp
  doc: "The observation metadata mapping file (will\nadd observation metadata to the\
    \ input BIOM\ntable, if provided)."
  type: File?
  inputBinding:
    prefix: --observation-metadata-fp
- id: in_sc_separated
  doc: "Comma-separated list of the metadata fields\nto split on semicolons. This\
    \ is useful for\nhierarchical data such as taxonomy or\nfunctional categories."
  type: string?
  inputBinding:
    prefix: --sc-separated
- id: in_sc_pipe_separated
  doc: "Comma-separated list of the metadata fields\nto split on semicolons and pipes\
    \ (\"|\"). This\nis useful for hierarchical data such as\nfunctional categories\
    \ with one-to-many\nmappings (e.g. x;y;z|x;y;w))."
  type: string?
  inputBinding:
    prefix: --sc-pipe-separated
- id: in_int_fields
  doc: "Comma-separated list of the metadata fields\nto cast to integers. This is\
    \ useful for\ninteger data such as \"DaysSinceStart\"."
  type: long?
  inputBinding:
    prefix: --int-fields
- id: in_float_fields
  doc: "Comma-separated list of the metadata fields\nto cast to floating point numbers.\
    \ This is\nuseful for real number data such as \"pH\"."
  type: double?
  inputBinding:
    prefix: --float-fields
- id: in_sample_header
  doc: "Comma-separated list of the sample metadata\nfield names. This is useful if\
    \ a header line\nis not provided with the metadata, if you\nwant to rename the\
    \ fields, or if you want to\ninclude only the first n fields where n is\nthe number\
    \ of entries provided here."
  type: long?
  inputBinding:
    prefix: --sample-header
- id: in_observation_header
  doc: "Comma-separated list of the observation\nmetadata field names. This is useful\
    \ if a\nheader line is not provided with the\nmetadata, if you want to rename\
    \ the fields,\nor if you want to include only the first n\nfields where n is the\
    \ number of entries\nprovided here."
  type: long?
  inputBinding:
    prefix: --observation-header
- id: in_output_as_json
  doc: Write the output file in JSON format.
  type: File?
  inputBinding:
    prefix: --output-as-json
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_as_json
  doc: Write the output file in JSON format.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_as_json)
hints: []
cwlVersion: v1.1
baseCommand:
- biom
- add-metadata
