class: CommandLineTool
id: _xmlcatalog.cwl
inputs:
- id: sgml
  doc: ': handle SGML Super catalogs for --add and --del'
  type: boolean
  inputBinding:
    prefix: --sgml
- id: shell
  doc: ': run a shell allowing interactive queries'
  type: boolean
  inputBinding:
    prefix: --shell
- id: create
  doc: ': create a new catalog'
  type: boolean
  inputBinding:
    prefix: --create
- id: add
  doc: "'type' 'orig' 'replace' : add an XML entry"
  type: boolean
  inputBinding:
    prefix: --add
- id: add
  doc: "'entry' : add an SGML entry"
  type: boolean
  inputBinding:
    prefix: --add
- id: del
  doc: "'values' : remove values"
  type: boolean
  inputBinding:
    prefix: --del
- id: no_out
  doc: ': avoid dumping the result on stdout used with --add or --del, it saves the
    catalog changes and with --sgml it automatically updates the super catalog'
  type: boolean
  inputBinding:
    prefix: --noout
- id: no_super_update
  doc: ': do not update the SGML super catalog'
  type: boolean
  inputBinding:
    prefix: --no-super-update
- id: verbose
  doc: ': provide debug informations'
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- _xmlcatalog
