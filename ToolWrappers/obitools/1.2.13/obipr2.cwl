class: CommandLineTool
id: obipr2.cwl
inputs:
- id: in_debug
  doc: Set logging in debug mode
  type: boolean?
  inputBinding:
    prefix: --DEBUG
- id: in_without_progress_bar
  doc: desactivate progress bar
  type: boolean?
  inputBinding:
    prefix: --without-progress-bar
- id: in_local_db
  doc: "Local copy of the files located in the specified\ndirectory will be used instead\
    \ of those present on the\nPR2 web site"
  type: Directory?
  inputBinding:
    prefix: --localdb
- id: in__mintaxidminimal_taxid
  doc: "####, --min-taxid=####\nminimal taxid for the species taxid\n"
  type: boolean?
  inputBinding:
    prefix: -m
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- obipr2
