class: CommandLineTool
id: legsta.cwl
inputs:
- id: in_quiet
  doc: Don't print anything to stderr.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_debug
  doc: +     Verbose debug output to stderr (default '0').
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_db_dir
  doc: SBT database folder (default '/usr/local/db').
  type: Directory?
  inputBinding:
    prefix: --dbdir
- id: in_csv
  doc: Output CSV instead of TSV (default '0').
  type: boolean?
  inputBinding:
    prefix: --csv
- id: in_noheader
  doc: Don't print header row (default '0').
  type: boolean?
  inputBinding:
    prefix: --noheader
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- legsta
