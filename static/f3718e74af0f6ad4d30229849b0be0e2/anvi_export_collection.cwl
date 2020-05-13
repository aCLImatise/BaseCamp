class: CommandLineTool
id: anvi_export_collection.cwl
inputs:
- id: pan_or_profile_db
  doc: Anvi'o pan or profile database (and even genes database in appropriate contexts).
  type: string
  inputBinding:
    prefix: --pan-or-profile-db
- id: collection_name
  doc: Collection name.
  type: string
  inputBinding:
    prefix: --collection-name
- id: output_file_prefix
  doc: A prefix to be used while naming the output files (no file type extensions
    please; just a prefix).
  type: File
  inputBinding:
    prefix: --output-file-prefix
- id: list_collections
  doc: Show available collections and exit.
  type: boolean
  inputBinding:
    prefix: --list-collections
- id: include_unbinned
  doc: When this flag is used, anvi'o will also store in the output file the items
    that do not appear in any of your bins. This new bin will be called 'UNBINNED_ITEMS_BIN'.
    Yes. The ugly name is intentional.
  type: boolean
  inputBinding:
    prefix: --include-unbinned
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-export-collection
