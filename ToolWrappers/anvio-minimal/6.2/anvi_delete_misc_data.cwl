class: CommandLineTool
id: anvi_delete_misc_data.cwl
inputs:
- id: in_pan_or_profile_db
  doc: "Anvi'o pan or profile database (and even genes\ndatabase in appropriate contexts)."
  type: string
  inputBinding:
    prefix: --pan-or-profile-db
- id: in_target_data_table
  doc: "The target table is the table you are interested in\naccessing. Currently\
    \ it can be 'items','layers', or\n'layer_orders'. Please see most up-to-date online\n\
    documentation for more information."
  type: string
  inputBinding:
    prefix: --target-data-table
- id: in_keys_to_remove
  doc: "A comma-separated list of data keys to remove from the\ndatabase. If you do\
    \ not use this parameter, anvi'o\nwill simply remove everything from the target\
    \ data\ntable immediately. Please note that you should not use\nthis parameter\
    \ together with `--groups-to-remove` in a\nsingle command."
  type: string
  inputBinding:
    prefix: --keys-to-remove
- id: in_groups_to_remove
  doc: "A comma-separated list of data groups to remove from\nthe database. If you\
    \ do not use this parameter, anvi'o\nwill simply remove everything from the target\
    \ data\ntable immediately. Please note that you should not use\nthis parameter\
    \ together with `--keys-to-remove` in a\nsingle command."
  type: string
  inputBinding:
    prefix: --groups-to-remove
- id: in_list_available_keys
  doc: "Using this flag will list available data keys in the\ntarget data table and\
    \ quit without doing anything\nelse."
  type: boolean
  inputBinding:
    prefix: --list-available-keys
- id: in_just_do_it
  doc: "Don't bother me with questions or warnings, just do\nit.\n"
  type: boolean
  inputBinding:
    prefix: --just-do-it
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- anvi-delete-misc-data
