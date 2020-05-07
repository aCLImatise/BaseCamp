class: CommandLineTool
id: abricate_get_db.cwl
inputs:
- id: debug
  doc: "!        Verbose debug output (default '0')."
  type: boolean
  inputBinding:
    prefix: --debug
- id: db_dir
  doc: Parent folder (default '/tmp/tmp8we49qhd/db').
  type: string
  inputBinding:
    prefix: --dbdir
- id: db
  doc: "Choices: argannot bacmet2 card ecoh ecoli_vf megares ncbi plasmidfinder resfinder\
    \ vfdb victors (default '')."
  type: string
  inputBinding:
    prefix: --db
- id: force
  doc: "!        Force download even if exists (default '0')."
  type: boolean
  inputBinding:
    prefix: --force
outputs: []
cwlVersion: v1.1
baseCommand:
- abricate-get_db
