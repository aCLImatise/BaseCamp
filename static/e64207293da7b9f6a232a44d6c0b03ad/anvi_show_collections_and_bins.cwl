class: CommandLineTool
id: anvi_show_collections_and_bins.cwl
inputs:
- id: in_pan_or_profile_db
  doc: "Anvi'o pan or profile database (and even genes\ndatabase in appropriate contexts).\n"
  type: string?
  inputBinding:
    prefix: --pan-or-profile-db
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- anvi-show-collections-and-bins
