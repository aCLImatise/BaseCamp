class: CommandLineTool
id: anvi_merge_bins.cwl
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
- id: b
  doc: NAMES, --bin-names-list BIN NAMES Comma-separated list of bin names.
  type: string
  inputBinding:
    prefix: -b
- id: b
  doc: NAME, --new-bin-name BIN NAME The new bin name.
  type: string
  inputBinding:
    prefix: -B
- id: list_collections
  doc: Show available collections and exit.
  type: boolean
  inputBinding:
    prefix: --list-collections
- id: list_bins
  doc: List available bins in a collection and exit.
  type: boolean
  inputBinding:
    prefix: --list-bins
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-merge-bins
