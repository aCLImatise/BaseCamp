class: CommandLineTool
id: abricate_get_db.cwl
inputs:
- id: in_debug
  doc: "!        Verbose debug output (default '0')."
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_db_dir
  doc: Parent folder (default '/usr/local/db').
  type: Directory?
  inputBinding:
    prefix: --dbdir
- id: in_db
  doc: "Choices: argannot bacmet2 card ecoh ecoli_vf megares ncbi plasmidfinder resfinder\
    \ vfdb victors (default '')."
  type: long?
  inputBinding:
    prefix: --db
- id: in_force
  doc: "!        Force download even if exists (default '0')."
  type: boolean?
  inputBinding:
    prefix: --force
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- abricate-get_db
