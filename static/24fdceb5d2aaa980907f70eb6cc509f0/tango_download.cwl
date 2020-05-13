class: CommandLineTool
id: tango_download.cwl
inputs:
- id: dl_dir
  doc: Write files to this directory. Defaults to db name in current directory. Will
    be created if missing.
  type: string
  inputBinding:
    prefix: --dldir
- id: tmpdir
  doc: Temporary directory for downloading files
  type: string
  inputBinding:
    prefix: --tmpdir
- id: tax_dir
  doc: Directory to store NCBI taxdump files. Defaults to 'taxonomy/' in current directory
  type: string
  inputBinding:
    prefix: --taxdir
- id: sqlite_db
  doc: Name of ete3 sqlite file to be created within --taxdir. Defaults to 'taxonomy.sqlite'
  type: string
  inputBinding:
    prefix: --sqlitedb
- id: force
  doc: Overwrite downloaded files
  type: boolean
  inputBinding:
    prefix: --force
- id: skip_check
  doc: 'Skip check of downloaded fasta file. Default: False'
  type: boolean
  inputBinding:
    prefix: --skip_check
- id: skip_id_map
  doc: Skip download of seqid->taxid mapfile (only applies to 'nr' database.
  type: boolean
  inputBinding:
    prefix: --skip_idmap
outputs: []
cwlVersion: v1.1
baseCommand:
- tango
- download
