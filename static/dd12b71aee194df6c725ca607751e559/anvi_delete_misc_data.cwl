class: CommandLineTool
id: anvi_delete_misc_data.cwl
inputs:
- id: pan_or_profile_db
  doc: Anvi'o pan or profile database (and even genes database in appropriate contexts).
  type: string
  inputBinding:
    prefix: --pan-or-profile-db
- id: target_data_table
  doc: The target table is the table you are interested in accessing. Currently it
    can be 'items','layers', or 'layer_orders'. Please see most up-to-date online
    documentation for more information.
  type: string
  inputBinding:
    prefix: --target-data-table
- id: keys_to_remove
  doc: A comma-separated list of data keys to remove from the database. If you do
    not use this parameter, anvi'o will simply remove everything from the target data
    table immediately. Please note that you should not use this parameter together
    with `--groups-to-remove` in a single command.
  type: string
  inputBinding:
    prefix: --keys-to-remove
- id: groups_to_remove
  doc: A comma-separated list of data groups to remove from the database. If you do
    not use this parameter, anvi'o will simply remove everything from the target data
    table immediately. Please note that you should not use this parameter together
    with `--keys-to-remove` in a single command.
  type: string
  inputBinding:
    prefix: --groups-to-remove
- id: list_available_keys
  doc: Using this flag will list available data keys in the target data table and
    quit without doing anything else.
  type: boolean
  inputBinding:
    prefix: --list-available-keys
- id: just_do_it
  doc: Don't bother me with questions or warnings, just do it.
  type: boolean
  inputBinding:
    prefix: --just-do-it
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-delete-misc-data
