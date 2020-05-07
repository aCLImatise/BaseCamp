class: CommandLineTool
id: biom_convert.cwl
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
- id: to_json
  doc: Output as JSON-formatted table.
  type: boolean
  inputBinding:
    prefix: --to-json
- id: to_hdf5
  doc: Output as HDF5-formatted table.
  type: boolean
  inputBinding:
    prefix: --to-hdf5
- id: to_tsv
  doc: Output as TSV-formatted (classic) table.
  type: boolean
  inputBinding:
    prefix: --to-tsv
- id: collapsed_samples
  doc: If --to_hdf5 is passed and the original table is a BIOM table with collapsed
    samples, this will update the sample metadata of the table to the supported HDF5
    collapsed format.
  type: boolean
  inputBinding:
    prefix: --collapsed-samples
- id: collapsed_observations
  doc: If --to_hdf5 is passed and the original table is a BIOM table with collapsed
    observations, this will update the observation metadata of the table to the supported
    HDF5 collapsed format.
  type: boolean
  inputBinding:
    prefix: --collapsed-observations
- id: header_key
  doc: The observation metadata to include from the input BIOM table file when creating
    a tsv table file. By default no observation metadata will be included.
  type: string
  inputBinding:
    prefix: --header-key
- id: output_metadata_id
  doc: The name to be given to the observation metadata column when creating a tsv
    table file if the column should be renamed.
  type: string
  inputBinding:
    prefix: --output-metadata-id
- id: table_type
  doc: '[OTU table|Pathway table|Function table|Ortholog table|Gene table|Metabolite
    table|Taxon table|Table] The type of the table.'
  type: boolean
  inputBinding:
    prefix: --table-type
- id: process_obs_metadata
  doc: '[taxonomy|naive|sc_separated] Process metadata associated with observations
    when converting from a classic table.'
  type: boolean
  inputBinding:
    prefix: --process-obs-metadata
- id: tsv_metadata_formatter
  doc: '[naive|sc_separated] Method for formatting the observation metadata.'
  type: boolean
  inputBinding:
    prefix: --tsv-metadata-formatter
outputs: []
cwlVersion: v1.1
baseCommand:
- biom
- convert
