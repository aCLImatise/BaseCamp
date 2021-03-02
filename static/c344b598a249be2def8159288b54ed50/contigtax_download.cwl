class: CommandLineTool
id: contigtax_download.cwl
inputs:
- id: in_dl_dir
  doc: "Write files to this directory. Defaults to db name in\ncurrent directory.\
    \ Will be created if missing."
  type: Directory?
  inputBinding:
    prefix: --dldir
- id: in_tmpdir
  doc: Temporary directory for downloading files
  type: Directory?
  inputBinding:
    prefix: --tmpdir
- id: in_tax_dir
  doc: "Directory to store NCBI taxdump files. Defaults to\n'taxonomy/' in current\
    \ directory"
  type: Directory?
  inputBinding:
    prefix: --taxdir
- id: in_sqlite_db
  doc: Name of ete3 sqlite file to be created within
  type: File?
  inputBinding:
    prefix: --sqlitedb
- id: in_tax_dir_dot
  doc: to 'taxonomy.sqlite'
  type: string?
  inputBinding:
    prefix: --taxdir.
- id: in_force
  doc: Overwrite downloaded files
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_skip_check
  doc: 'Skip check of downloaded fasta file. Default: False'
  type: boolean?
  inputBinding:
    prefix: --skip_check
- id: in_skip_id_map
  doc: "Skip download of seqid->taxid mapfile (only applies to\n'nr' database).\n"
  type: boolean?
  inputBinding:
    prefix: --skip_idmap
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- contigtax
- download
