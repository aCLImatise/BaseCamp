class: CommandLineTool
id: anvi_merge_bins.cwl
inputs:
- id: in_collection_name
  doc: Collection name.
  type: string?
  inputBinding:
    prefix: --collection-name
- id: in_names__namescommaseparated
  doc: "NAMES, --bin-names-list BIN NAMES\nComma-separated list of bin names."
  type: string?
  inputBinding:
    prefix: -b
- id: in_name_newbinname_bin
  doc: "NAME, --new-bin-name BIN NAME\nThe new bin name."
  type: string?
  inputBinding:
    prefix: -B
- id: in_list_collections
  doc: Show available collections and exit.
  type: boolean?
  inputBinding:
    prefix: --list-collections
- id: in_list_bins
  doc: List available bins in a collection and exit.
  type: boolean?
  inputBinding:
    prefix: --list-bins
- id: in_p
  doc: ''
  type: string?
  inputBinding:
    prefix: -p
- id: in_below_dot
  doc: "-p PAN_OR_PROFILE_DB, --pan-or-profile-db PAN_OR_PROFILE_DB\nAnvi'o pan or\
    \ profile database (and even genes\ndatabase in appropriate contexts)."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- anvi-merge-bins
