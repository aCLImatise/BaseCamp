class: CommandLineTool
id: obisilva.cwl
inputs:
- id: in_debug
  doc: Set logging in debug mode
  type: boolean
  inputBinding:
    prefix: --DEBUG
- id: in_without_progress_bar
  doc: desactivate progress bar
  type: boolean
  inputBinding:
    prefix: --without-progress-bar
- id: in_ssu
  doc: specify that you are interested in the SSU database
  type: boolean
  inputBinding:
    prefix: --ssu
- id: in_lsu
  doc: specify that you are interested in the LSU database
  type: boolean
  inputBinding:
    prefix: --lsu
- id: in_parc
  doc: "specify that you are interested in the parc version of\nthe database"
  type: boolean
  inputBinding:
    prefix: --parc
- id: in_ref
  doc: "specify that you are interested in the reference\nversion of the database"
  type: boolean
  inputBinding:
    prefix: --ref
- id: in_nr
  doc: "specify that you are interested in the non redundant\nversion of the database"
  type: boolean
  inputBinding:
    prefix: --nr
- id: in_trunc
  doc: "specify that you are interested in the truncated\nversion of database"
  type: boolean
  inputBinding:
    prefix: --trunc
- id: in_local_db
  doc: "Local copy of the files located in the specified\ndirectory will be used instead\
    \ of those present on the\nARB-Silva web site"
  type: Directory
  inputBinding:
    prefix: --localdb
- id: in__mintaxidminimal_taxid
  doc: "####, --min-taxid=####\nminimal taxid for the species taxid\n"
  type: boolean
  inputBinding:
    prefix: -m
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- obisilva
