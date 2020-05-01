#!/usr/bin/env cwl-runner

baseCommand:
- anvi-merge-bins
class: CommandLineTool
cwlVersion: v1.0
id: anvi-merge-bins
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
- doc: NAMES, --bin-names-list BIN NAMES Comma-separated list of bin names.
  id: b
  inputBinding:
    prefix: -b
  type: string
- doc: NAME, --new-bin-name BIN NAME The new bin name.
  id: b
  inputBinding:
    prefix: -B
  type: string
- doc: Show available collections and exit.
  id: list_collections
  inputBinding:
    prefix: --list-collections
  type: boolean
- doc: List available bins in a collection and exit.
  id: list_bins
  inputBinding:
    prefix: --list-bins
  type: boolean
