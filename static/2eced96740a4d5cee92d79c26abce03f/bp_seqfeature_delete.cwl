class: CommandLineTool
id: bp_seqfeature_delete.pl.cwl
inputs:
- id: dsn
  doc: The database name (dbi:mysql:test)
  type: boolean
  inputBinding:
    prefix: --dsn
- id: adaptor
  doc: The storage adaptor to use (DBI::mysql)
  type: boolean
  inputBinding:
    prefix: --adaptor
- id: name
  doc: Delete features based on name or wildcard pattern (default)
  type: boolean
  inputBinding:
    prefix: --name
- id: type
  doc: Delete features based on type
  type: boolean
  inputBinding:
    prefix: --type
- id: id
  doc: Delete features based on primary id
  type: boolean
  inputBinding:
    prefix: --id
- id: verbose
  doc: Turn on verbose progress reporting (default)
  type: boolean
  inputBinding:
    prefix: --verbose
- id: no_verbose
  doc: Turn off verbose progress reporting
  type: boolean
  inputBinding:
    prefix: --noverbose
- id: dry_run
  doc: Dry run; report features to be deleted without actually deleting them
  type: boolean
  inputBinding:
    prefix: --dryrun
- id: user
  doc: User to connect to database as
  type: boolean
  inputBinding:
    prefix: --user
- id: password
  doc: Password to use to connect to database
  type: boolean
  inputBinding:
    prefix: --password
- id: fast
  doc: Deletes each item instantly not atomic for full dataset (mainly for deleting
    massive datasets linked to a type)
  type: boolean
  inputBinding:
    prefix: --fast
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_seqfeature_delete.pl
