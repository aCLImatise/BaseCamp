class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/anvi_import_misc_data.cwl
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
- id: target_data_group
  doc: "Data group to focus. Anvi'o misc data tables support associating a set of\
    \ data keys with a data group. If you have no idea what this is, then probably\
    \ you don't need it, and anvi'o will take care of you. Note: this flag is IRRELEVANT\
    \ if you are working with additional order data tables."
  type: string
  inputBinding:
    prefix: --target-data-group
- id: transpose
  doc: Transpose the input matrix file before clustering.
  type: boolean
  inputBinding:
    prefix: --transpose
- id: just_do_it
  doc: Don't bother me with questions or warnings, just do it.
  type: boolean
  inputBinding:
    prefix: --just-do-it
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-import-misc-data
