class: CommandLineTool
id: bp_seqfeature_delete.pl.cwl
inputs:
- id: in_dsn
  doc: The database name (dbi:mysql:test)
  type: boolean
  inputBinding:
    prefix: --dsn
- id: in_adaptor
  doc: The storage adaptor to use (DBI::mysql)
  type: boolean
  inputBinding:
    prefix: --adaptor
- id: in_name
  doc: Delete features based on name or wildcard pattern (default)
  type: boolean
  inputBinding:
    prefix: --name
- id: in_type
  doc: Delete features based on type
  type: boolean
  inputBinding:
    prefix: --type
- id: in_id
  doc: Delete features based on primary id
  type: boolean
  inputBinding:
    prefix: --id
- id: in_verbose
  doc: Turn on verbose progress reporting (default)
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_no_verbose
  doc: Turn off verbose progress reporting
  type: boolean
  inputBinding:
    prefix: --noverbose
- id: in_dry_run
  doc: Dry run; report features to be deleted without actually deleting them
  type: boolean
  inputBinding:
    prefix: --dryrun
- id: in_user
  doc: User to connect to database as
  type: boolean
  inputBinding:
    prefix: --user
- id: in_password
  doc: Password to use to connect to database
  type: boolean
  inputBinding:
    prefix: --password
- id: in_fast
  doc: Deletes each item instantly not atomic for full dataset (mainly for deleting
    massive datasets linked to a type)
  type: boolean
  inputBinding:
    prefix: --fast
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bp_seqfeature_delete.pl
