class: CommandLineTool
id: biom_convert.cwl
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
- id: in_to_json
  doc: Output as JSON-formatted table.
  type: boolean?
  inputBinding:
    prefix: --to-json
- id: in_to_hdf_five
  doc: Output as HDF5-formatted table.
  type: boolean?
  inputBinding:
    prefix: --to-hdf5
- id: in_to_tsv
  doc: Output as TSV-formatted (classic) table.
  type: boolean?
  inputBinding:
    prefix: --to-tsv
- id: in_collapsed_samples
  doc: "If --to_hdf5 is passed and the original\ntable is a BIOM table with collapsed\n\
    samples, this will update the sample\nmetadata of the table to the supported HDF5\n\
    collapsed format."
  type: boolean?
  inputBinding:
    prefix: --collapsed-samples
- id: in_collapsed_observations
  doc: "If --to_hdf5 is passed and the original\ntable is a BIOM table with collapsed\n\
    observations, this will update the\nobservation metadata of the table to the\n\
    supported HDF5 collapsed format."
  type: boolean?
  inputBinding:
    prefix: --collapsed-observations
- id: in_header_key
  doc: "The observation metadata to include from the\ninput BIOM table file when creating\
    \ a tsv\ntable file. By default no observation\nmetadata will be included."
  type: File?
  inputBinding:
    prefix: --header-key
- id: in_output_metadata_id
  doc: "The name to be given to the observation\nmetadata column when creating a tsv\
    \ table\nfile if the column should be renamed."
  type: File?
  inputBinding:
    prefix: --output-metadata-id
- id: in_table_type
  doc: "[OTU table|Pathway table|Function table|Ortholog table|Gene table|Metabolite\
    \ table|Taxon table|Table]\nThe type of the table."
  type: boolean?
  inputBinding:
    prefix: --table-type
- id: in_process_obs_metadata
  doc: "[taxonomy|naive|sc_separated]\nProcess metadata associated with\nobservations\
    \ when converting from a classic\ntable."
  type: boolean?
  inputBinding:
    prefix: --process-obs-metadata
- id: in_tsv_metadata_formatter
  doc: "[naive|sc_separated]\nMethod for formatting the observation\nmetadata."
  type: boolean?
  inputBinding:
    prefix: --tsv-metadata-formatter
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- biom
- convert
