class: CommandLineTool
id: anvi_export_collection.cwl
inputs:
- id: in_pan_or_profile_db
  doc: "Anvi'o pan or profile database (and even genes\ndatabase in appropriate contexts).\
    \ (default: None)"
  type: string?
  inputBinding:
    prefix: --pan-or-profile-db
- id: in_collection_name
  doc: 'Collection name. (default: None)'
  type: string?
  inputBinding:
    prefix: --collection-name
- id: in_output_file_prefix
  doc: "A prefix to be used while naming the output files (no\nfile type extensions\
    \ please; just a prefix). (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --output-file-prefix
- id: in_list_collections
  doc: 'Show available collections and exit. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --list-collections
- id: in_include_unbinned
  doc: "When this flag is used, anvi'o will also store in the\noutput file the items\
    \ that do not appear in any of\nyour bins. This new bin will be called\n'UNBINNED_ITEMS_BIN'.\
    \ Yes. The ugly name is\nintentional. (default: False)"
  type: File?
  inputBinding:
    prefix: --include-unbinned
- id: in_collection_txt
  doc: '🍺 More on `anvi-export-collection`:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_prefix
  doc: "A prefix to be used while naming the output files (no\nfile type extensions\
    \ please; just a prefix). (default:\nNone)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_prefix)
- id: out_include_unbinned
  doc: "When this flag is used, anvi'o will also store in the\noutput file the items\
    \ that do not appear in any of\nyour bins. This new bin will be called\n'UNBINNED_ITEMS_BIN'.\
    \ Yes. The ugly name is\nintentional. (default: False)"
  type: File?
  outputBinding:
    glob: $(inputs.in_include_unbinned)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-export-collection
