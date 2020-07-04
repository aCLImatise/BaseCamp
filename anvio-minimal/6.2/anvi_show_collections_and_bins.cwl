class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/anvi_show_collections_and_bins.cwl
inputs:
- id: pan_or_profile_db
  doc: Anvi'o pan or profile database (and even genes database in appropriate contexts).
  type: string
  inputBinding:
    prefix: --pan-or-profile-db
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-show-collections-and-bins
