class: CommandLineTool
id: augur_export_v1.cwl
inputs:
- id: in_tree
  doc: tree to perform trait reconstruction on
  type: string?
  inputBinding:
    prefix: --tree
- id: in_metadata
  doc: sequence metadata, as CSV or TSV
  type: File?
  inputBinding:
    prefix: --metadata
- id: in_node_data
  doc: JSON files with meta data for each node
  type: string[]
  inputBinding:
    prefix: --node-data
- id: in_output_tree
  doc: "JSON file name that is passed on to auspice (e.g.,\nzika_tree.json)."
  type: File?
  inputBinding:
    prefix: --output-tree
- id: in_output_meta
  doc: "JSON file name that is passed on to auspice (e.g.,\nzika_meta.json)."
  type: File?
  inputBinding:
    prefix: --output-meta
- id: in_auspice_config
  doc: file with auspice configuration
  type: File?
  inputBinding:
    prefix: --auspice-config
- id: in_colors
  doc: "Custom color definitions, one per line in the format\n`TRAIT_TYPE\\tTRAIT_VALUE\\\
    tHEX_CODE`"
  type: File?
  inputBinding:
    prefix: --colors
- id: in_lat_longs
  doc: "file latitudes and longitudes, overrides built in\nmappings"
  type: File?
  inputBinding:
    prefix: --lat-longs
- id: in_tree_name
  doc: Tree name (needed for tangle tree functionality)
  type: string?
  inputBinding:
    prefix: --tree-name
- id: in_mini_fy_json
  doc: export JSONs without indentation or line returns
  type: boolean?
  inputBinding:
    prefix: --minify-json
- id: in_output_sequence
  doc: "JSON file name that is passed on to auspice (e.g.,\nzika_seq.json)."
  type: File?
  inputBinding:
    prefix: --output-sequence
- id: in_reference
  doc: reference sequence for export to browser, only vcf
  type: string?
  inputBinding:
    prefix: --reference
- id: in_reference_translations
  doc: "reference translations for export to browser, only vcf\n"
  type: string?
  inputBinding:
    prefix: --reference-translations
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augur:11.1.2--py_1
cwlVersion: v1.1
baseCommand:
- augur
- export
- v1
