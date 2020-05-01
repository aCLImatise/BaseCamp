#!/usr/bin/env cwl-runner

baseCommand:
- anvi-export-collection
class: CommandLineTool
cwlVersion: v1.0
id: anvi-export-collection
inputs:
- doc: Anvi'o pan or profile database (and even genes database in appropriate contexts).
  id: pan_or_profile_db
  inputBinding:
    prefix: --pan-or-profile-db
  type: string
- doc: Collection name.
  id: collection_name
  inputBinding:
    prefix: --collection-name
  type: string
- doc: A prefix to be used while naming the output files (no file type extensions
    please; just a prefix).
  id: output_file_prefix
  inputBinding:
    prefix: --output-file-prefix
  type: File
- doc: Show available collections and exit.
  id: list_collections
  inputBinding:
    prefix: --list-collections
  type: boolean
- doc: When this flag is used, anvi'o will also store in the output file the items
    that do not appear in any of your bins. This new bin will be called 'UNBINNED_ITEMS_BIN'.
    Yes. The ugly name is intentional.
  id: include_unbinned
  inputBinding:
    prefix: --include-unbinned
  type: boolean
