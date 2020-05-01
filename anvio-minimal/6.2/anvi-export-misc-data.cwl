#!/usr/bin/env cwl-runner

baseCommand:
- anvi-export-misc-data
class: CommandLineTool
cwlVersion: v1.0
id: anvi-export-misc-data
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
- doc: "Data group to focus. Anvi'o misc data tables support associating a set of\
    \ data keys with a data group. If you have no idea what this is, then probably\
    \ you don't need it, and anvi'o will take care of you. Note: this flag is IRRELEVANT\
    \ if you are working with additional order data tables."
  id: target_data_group
  inputBinding:
    prefix: --target-data-group
  type: string
- doc: File path to store results.
  id: output_file
  inputBinding:
    prefix: --output-file
  type: File
