class: CommandLineTool
id: augur_export_v2.cwl
inputs:
- id: in_tree
  doc: Phylogenetic tree, usually output from `augur refine`
  type: string?
  inputBinding:
    prefix: --tree
- id: in_node_data
  doc: JSON files containing metadata for nodes in the tree
  type: string[]
  inputBinding:
    prefix: --node-data
- id: in_output
  doc: Ouput file (typically for visualisation in auspice)
  type: File?
  inputBinding:
    prefix: --output
- id: in_auspice_config
  doc: Auspice configuration file
  type: File?
  inputBinding:
    prefix: --auspice-config
- id: in_title
  doc: Title to be displayed by auspice
  type: string?
  inputBinding:
    prefix: --title
- id: in_maintainers
  doc: "Analysis maintained by, in format 'Name <URL>' 'Name2\n<URL>', ..."
  type: string[]
  inputBinding:
    prefix: --maintainers
- id: in_build_url
  doc: Build URL/repository to be displayed by Auspice
  type: string?
  inputBinding:
    prefix: --build-url
- id: in_description
  doc: "Markdown file with description of build and/or\nacknowledgements to be displayed\
    \ by Auspice"
  type: File?
  inputBinding:
    prefix: --description
- id: in_geo_resolutions
  doc: Geographic traits to be displayed on map
  type: string[]
  inputBinding:
    prefix: --geo-resolutions
- id: in_color_by_metadata
  doc: Metadata columns to include as coloring options
  type: string[]
  inputBinding:
    prefix: --color-by-metadata
- id: in_panels
  doc: "Restrict panel display in auspice. Options are tree,\nmap, entropy, frequencies.\
    \ Ignore this option to\ndisplay all available panels."
  type: string[]
  inputBinding:
    prefix: --panels
- id: in_metadata
  doc: Additional metadata for strains in the tree, as CSV or
  type: File?
  inputBinding:
    prefix: --metadata
- id: in_lat_longs
  doc: "Latitudes and longitudes for geography traits\n(overrides built in mappings)"
  type: string?
  inputBinding:
    prefix: --lat-longs
- id: in_mini_fy_json
  doc: export JSONs without indentation or line returns
  type: boolean?
  inputBinding:
    prefix: --minify-json
- id: in_include_root_sequence
  doc: "Export an additional JSON containing the root sequence\n(reference sequence\
    \ for vcf) used to identify\nmutations. The filename will follow the pattern of\n\
    <OUTPUT>_root-sequence.json for a main auspice JSON of\n<OUTPUT>.json\n"
  type: File?
  inputBinding:
    prefix: --include-root-sequence
- id: in_tsv
  doc: --colors FILE         Custom color definitions, one per line in the format
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_include_root_sequence
  doc: "Export an additional JSON containing the root sequence\n(reference sequence\
    \ for vcf) used to identify\nmutations. The filename will follow the pattern of\n\
    <OUTPUT>_root-sequence.json for a main auspice JSON of\n<OUTPUT>.json\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_include_root_sequence)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augur:11.2.0--py_0
cwlVersion: v1.1
baseCommand:
- augur
- export
- v2
