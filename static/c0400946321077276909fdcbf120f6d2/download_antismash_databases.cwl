class: CommandLineTool
id: download_antismash_databases.cwl
inputs:
- id: database_dir
  doc: 'Base directory for the antiSMASH databases (default: /tmp/tmp3fprpm3c/lib/python3.7/site-
    packages/antismash/databases).'
  type: string
  inputBinding:
    prefix: --database-dir
outputs: []
cwlVersion: v1.1
baseCommand:
- download-antismash-databases
