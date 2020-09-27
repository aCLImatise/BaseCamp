class: CommandLineTool
id: _xmlcatalog.cwl
inputs:
- id: in_sgml
  doc: ': handle SGML Super catalogs for --add and --del'
  type: boolean
  inputBinding:
    prefix: --sgml
- id: in_shell
  doc: ': run a shell allowing interactive queries'
  type: boolean
  inputBinding:
    prefix: --shell
- id: in_create
  doc: ': create a new catalog'
  type: boolean
  inputBinding:
    prefix: --create
- id: in_del
  doc: "'values' : remove values"
  type: boolean
  inputBinding:
    prefix: --del
- id: in_no_out
  doc: ": avoid dumping the result on stdout\nused with --add or --del, it saves the\
    \ catalog changes\nand with --sgml it automatically updates the super catalog"
  type: boolean
  inputBinding:
    prefix: --noout
- id: in_no_super_update
  doc: ': do not update the SGML super catalog'
  type: boolean
  inputBinding:
    prefix: --no-super-update
- id: in_verbose
  doc: ': provide debug informations'
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _xmlcatalog
