class: CommandLineTool
id: staramr_db_update.cwl
inputs:
- id: update_default
  doc: Updates default database directory (/tmp/tmp82x9w9yh/lib/python3.7/site-packages/staramr/databases/data).
  type: boolean
  inputBinding:
    prefix: --update-default
- id: res_finder_commit
  doc: The specific git commit for the resfinder database [latest].
  type: string
  inputBinding:
    prefix: --resfinder-commit
- id: point_finder_commit
  doc: The specific git commit for the pointfinder database [latest].
  type: string
  inputBinding:
    prefix: --pointfinder-commit
- id: plasmid_finder_commit
  doc: The specific git commit for the plasmidfinder database [latest].
  type: string
  inputBinding:
    prefix: --plasmidfinder-commit
outputs: []
cwlVersion: v1.1
baseCommand:
- staramr
- db
- update
