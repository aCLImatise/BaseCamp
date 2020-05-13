class: CommandLineTool
id: staramr_db_build.cwl
inputs:
- id: dir
  doc: The directory to download the databases into [/tmp/tmp82x9w9yh/lib/python3.7/site-packages/staramr/databases/data].
  type: string
  inputBinding:
    prefix: --dir
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
- build
