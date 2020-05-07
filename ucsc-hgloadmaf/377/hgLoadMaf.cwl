class: CommandLineTool
id: hgLoadMaf.cwl
inputs:
- id: database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: table
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: warn
  doc: warn instead of error upon empty/incomplete alignments
  type: boolean
  inputBinding:
    prefix: -warn
- id: warn
  doc: warn instead of error, with detail for the warning
  type: boolean
  inputBinding:
    prefix: -WARN
- id: test
  doc: use infile as input, and suppress loading the database. Just create .tab file
    in current dir.
  type: string
  inputBinding:
    prefix: -test
- id: path_prefix
  doc: load files from specified directory  (default /gbdb/database/table.
  type: string
  inputBinding:
    prefix: -pathPrefix
- id: tmpdir
  doc: path to directory for creation of temporary .tab file which will be removed
    after loading
  type: File
  inputBinding:
    prefix: -tmpDir
- id: load_file
  doc: use file as input
  type: File
  inputBinding:
    prefix: -loadFile
- id: max_namelen
  doc: specify max chromosome name length to avoid reference to chromInfo table
  type: string
  inputBinding:
    prefix: -maxNameLen
- id: def_pos
  doc: file to put default position in default position is first block
  type: File
  inputBinding:
    prefix: -defPos
- id: custom
  doc: loading a custom track, don't use history or extFile tables
  type: boolean
  inputBinding:
    prefix: -custom
outputs: []
cwlVersion: v1.1
baseCommand:
- hgLoadMaf
