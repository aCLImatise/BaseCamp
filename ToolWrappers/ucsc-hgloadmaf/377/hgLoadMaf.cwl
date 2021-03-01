class: CommandLineTool
id: hgLoadMaf.cwl
inputs:
- id: in_warn_instead_error_emptyincomplete
  doc: warn instead of error upon empty/incomplete alignments
  type: boolean?
  inputBinding:
    prefix: -warn
- id: in_warn_instead_error_detail
  doc: warn instead of error, with detail for the warning
  type: boolean?
  inputBinding:
    prefix: -WARN
- id: in_test
  doc: "use infile as input, and suppress loading\nthe database. Just create .tab\
    \ file in current dir."
  type: File?
  inputBinding:
    prefix: -test
- id: in_path_prefix
  doc: "load files from specified directory\n(default /gbdb/database/table."
  type: Directory?
  inputBinding:
    prefix: -pathPrefix
- id: in_tmpdir
  doc: "path to directory for creation of temporary .tab file\nwhich will be removed\
    \ after loading"
  type: File?
  inputBinding:
    prefix: -tmpDir
- id: in_load_file
  doc: use file as input
  type: File?
  inputBinding:
    prefix: -loadFile
- id: in_max_namelen
  doc: "specify max chromosome name length to avoid\nreference to chromInfo table"
  type: long?
  inputBinding:
    prefix: -maxNameLen
- id: in_def_pos
  doc: "file to put default position in\ndefault position is first block"
  type: File?
  inputBinding:
    prefix: -defPos
- id: in_custom
  doc: "loading a custom track, don't use history\nor extFile tables"
  type: boolean?
  inputBinding:
    prefix: -custom
- id: in_database
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hgLoadMaf
