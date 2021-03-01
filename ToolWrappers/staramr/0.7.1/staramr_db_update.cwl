class: CommandLineTool
id: staramr_db_update.cwl
inputs:
- id: in_update_default
  doc: Updates default database directory (/usr/local/lib/python3.7/site-packages/staramr/databases/data).
  type: boolean?
  inputBinding:
    prefix: --update-default
- id: in_res_finder_commit
  doc: The specific git commit for the resfinder database [latest].
  type: string?
  inputBinding:
    prefix: --resfinder-commit
- id: in_point_finder_commit
  doc: The specific git commit for the pointfinder database [latest].
  type: string?
  inputBinding:
    prefix: --pointfinder-commit
- id: in_plasmid_finder_commit
  doc: The specific git commit for the plasmidfinder database [latest].
  type: string?
  inputBinding:
    prefix: --plasmidfinder-commit
- id: in_directories
  doc: 'optional arguments:'
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
- staramr
- db
- update
