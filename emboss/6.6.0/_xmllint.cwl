class: CommandLineTool
id: _xmllint.cwl
inputs:
- id: no_catalogs
  doc: ': deactivate all catalogs'
  type: boolean
  inputBinding:
    prefix: --nocatalogs
- id: auto
  doc: ': generate a small doc on the fly'
  type: boolean
  inputBinding:
    prefix: --auto
- id: xinclude
  doc: ': do XInclude processing'
  type: boolean
  inputBinding:
    prefix: --xinclude
- id: nox_include_node
  doc: ': same but do not generate XInclude nodes'
  type: boolean
  inputBinding:
    prefix: --noxincludenode
- id: no_fix_up_base_uris
  doc: ': do not fixup xml:base uris'
  type: boolean
  inputBinding:
    prefix: --nofixup-base-uris
- id: load_dtd
  doc: ': fetch external DTD'
  type: boolean
  inputBinding:
    prefix: --loaddtd
- id: dtd_attr
  doc: ': loaddtd + populate the tree with inherited attributes '
  type: boolean
  inputBinding:
    prefix: --dtdattr
- id: stream
  doc: ': use the streaming interface to process very large files'
  type: boolean
  inputBinding:
    prefix: --stream
- id: walker
  doc: ': create a reader and walk though the resulting doc'
  type: boolean
  inputBinding:
    prefix: --walker
- id: pattern
  doc: ': test the pattern support'
  type: string
  inputBinding:
    prefix: --pattern
- id: chk_register
  doc: ': verify the node registration code'
  type: boolean
  inputBinding:
    prefix: --chkregister
- id: relaxng
  doc: ': do RelaxNG validation against the schema'
  type: string
  inputBinding:
    prefix: --relaxng
- id: schema
  doc: ': do validation against the WXS schema'
  type: string
  inputBinding:
    prefix: --schema
- id: schematron
  doc: ': do validation against a schematron'
  type: string
  inputBinding:
    prefix: --schematron
- id: sax1
  doc: ': use the old SAX1 interfaces for processing'
  type: boolean
  inputBinding:
    prefix: --sax1
- id: sax
  doc: ': do not build a tree but work just at the SAX level'
  type: boolean
  inputBinding:
    prefix: --sax
- id: oldxml10
  doc: ': use XML-1.0 parsing rules before the 5th edition'
  type: boolean
  inputBinding:
    prefix: --oldxml10
- id: xpath
  doc: ': evaluate the XPath expression, imply --noout'
  type: string
  inputBinding:
    prefix: --xpath
outputs: []
cwlVersion: v1.1
baseCommand:
- _xmllint
