#!/usr/bin/env cwl-runner

baseCommand:
- anvi-delete-misc-data
class: CommandLineTool
cwlVersion: v1.0
id: anvi-delete-misc-data
inputs:
- doc: Anvi'o pan or profile database (and even genes database in appropriate contexts).
  id: pan_or_profile_db
  inputBinding:
    prefix: --pan-or-profile-db
  type: string
- doc: The target table is the table you are interested in accessing. Currently it
    can be 'items','layers', or 'layer_orders'. Please see most up-to-date online
    documentation for more information.
  id: target_data_table
  inputBinding:
    prefix: --target-data-table
  type: string
- doc: A comma-separated list of data keys to remove from the database. If you do
    not use this parameter, anvi'o will simply remove everything from the target data
    table immediately. Please note that you should not use this parameter together
    with `--groups-to-remove` in a single command.
  id: keys_to_remove
  inputBinding:
    prefix: --keys-to-remove
  type: string
- doc: A comma-separated list of data groups to remove from the database. If you do
    not use this parameter, anvi'o will simply remove everything from the target data
    table immediately. Please note that you should not use this parameter together
    with `--keys-to-remove` in a single command.
  id: groups_to_remove
  inputBinding:
    prefix: --groups-to-remove
  type: string
- doc: Using this flag will list available data keys in the target data table and
    quit without doing anything else.
  id: list_available_keys
  inputBinding:
    prefix: --list-available-keys
  type: boolean
- doc: Don't bother me with questions or warnings, just do it.
  id: just_do_it
  inputBinding:
    prefix: --just-do-it
  type: boolean
