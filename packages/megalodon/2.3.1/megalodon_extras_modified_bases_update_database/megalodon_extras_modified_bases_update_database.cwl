class: CommandLineTool
id: megalodon_extras_modified_bases_update_database.cwl
inputs:
- id: in_new_db
  doc: "Output data base name. Should replace\nper_read_modified_base_calls.db in\
    \ megalodon results\ndirectory in order to process further. Default:\nmegalodon_mods.db\n"
  type: Directory?
  inputBinding:
    prefix: --new-db
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_new_db
  doc: "Output data base name. Should replace\nper_read_modified_base_calls.db in\
    \ megalodon results\ndirectory in order to process further. Default:\nmegalodon_mods.db\n"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_new_db)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/megalodon:2.3.1--py38h4a8c8d9_0
cwlVersion: v1.1
baseCommand:
- megalodon_extras
- modified_bases
- update_database
