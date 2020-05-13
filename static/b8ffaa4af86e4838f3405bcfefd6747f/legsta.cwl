class: CommandLineTool
id: legsta.cwl
inputs:
- id: quiet
  doc: Don't print anything to stderr.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: debug
  doc: +     Verbose debug output to stderr (default '0').
  type: boolean
  inputBinding:
    prefix: --debug
- id: db_dir
  doc: SBT database folder (default '/tmp/tmp88ryjf1z/db').
  type: string
  inputBinding:
    prefix: --dbdir
- id: csv
  doc: Output CSV instead of TSV (default '0').
  type: boolean
  inputBinding:
    prefix: --csv
- id: noheader
  doc: Don't print header row (default '0').
  type: boolean
  inputBinding:
    prefix: --noheader
outputs: []
cwlVersion: v1.1
baseCommand:
- legsta
