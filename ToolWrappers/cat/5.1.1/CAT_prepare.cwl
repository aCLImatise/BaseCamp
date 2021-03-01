class: CommandLineTool
id: CAT_prepare.cwl
inputs:
- id: in_fresh
  doc: Start with a fresh database.
  type: boolean?
  inputBinding:
    prefix: --fresh
- id: in_existing
  doc: "Start with an existing database. CAT will search the\nsupplied database and\
    \ taxonomy folders and only\nconstruct files that do not exist yet."
  type: boolean?
  inputBinding:
    prefix: --existing
- id: in_database_folder
  doc: "Name of folder to which database files will be written\n(default: {date}_CAT_database)."
  type: boolean?
  inputBinding:
    prefix: --database_folder
- id: in_taxonomy_folder
  doc: "Name of folder to which taxonomy files will be\ndownloaded (default: {date}_taxonomy)."
  type: boolean?
  inputBinding:
    prefix: --taxonomy_folder
- id: in_path_to_diamond
  doc: "Path to DIAMOND binaries. Supply if CAT prepare can\nnot find DIAMOND."
  type: boolean?
  inputBinding:
    prefix: --path_to_diamond
- id: in_quiet
  doc: Suppress verbosity.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: Increase verbostity.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_no_log
  doc: Suppress log file.
  type: boolean?
  inputBinding:
    prefix: --no_log
- id: in_nproc
  doc: "Number of cores to deploy by DIAMOND makedb (default:\nmaximum).\n"
  type: boolean?
  inputBinding:
    prefix: --nproc
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- CAT
- prepare
