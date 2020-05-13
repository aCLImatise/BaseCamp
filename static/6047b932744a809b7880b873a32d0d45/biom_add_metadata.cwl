class: CommandLineTool
id: biom_add_metadata.cwl
inputs:
- id: input_fp
  doc: The input BIOM table  [required]
  type: File
  inputBinding:
    prefix: --input-fp
- id: output_fp
  doc: The output BIOM table  [required]
  type: File
  inputBinding:
    prefix: --output-fp
- id: sample_metadata_fp
  doc: The sample metadata mapping file (will add sample metadata to the input BIOM
    table, if provided).
  type: File
  inputBinding:
    prefix: --sample-metadata-fp
- id: observation_metadata_fp
  doc: The observation metadata mapping file (will add observation metadata to the
    input BIOM table, if provided).
  type: File
  inputBinding:
    prefix: --observation-metadata-fp
- id: sc_separated
  doc: Comma-separated list of the metadata fields to split on semicolons. This is
    useful for hierarchical data such as taxonomy or functional categories.
  type: string
  inputBinding:
    prefix: --sc-separated
- id: sc_pipe_separated
  doc: Comma-separated list of the metadata fields to split on semicolons and pipes
    ("|"). This is useful for hierarchical data such as functional categories with
    one-to-many mappings (e.g. x;y;z|x;y;w)).
  type: string
  inputBinding:
    prefix: --sc-pipe-separated
- id: int_fields
  doc: Comma-separated list of the metadata fields to cast to integers. This is useful
    for integer data such as "DaysSinceStart".
  type: string
  inputBinding:
    prefix: --int-fields
- id: float_fields
  doc: Comma-separated list of the metadata fields to cast to floating point numbers.
    This is useful for real number data such as "pH".
  type: string
  inputBinding:
    prefix: --float-fields
- id: sample_header
  doc: Comma-separated list of the sample metadata field names. This is useful if
    a header line is not provided with the metadata, if you want to rename the fields,
    or if you want to include only the first n fields where n is the number of entries
    provided here.
  type: string
  inputBinding:
    prefix: --sample-header
- id: observation_header
  doc: Comma-separated list of the observation metadata field names. This is useful
    if a header line is not provided with the metadata, if you want to rename the
    fields, or if you want to include only the first n fields where n is the number
    of entries provided here.
  type: string
  inputBinding:
    prefix: --observation-header
- id: output_as_json
  doc: Write the output file in JSON format.
  type: boolean
  inputBinding:
    prefix: --output-as-json
outputs: []
cwlVersion: v1.1
baseCommand:
- biom
- add-metadata
