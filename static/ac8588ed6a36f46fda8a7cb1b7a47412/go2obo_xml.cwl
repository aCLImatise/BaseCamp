class: CommandLineTool
id: go2obo_xml.cwl
inputs:
- id: obj_yaml
  doc: a YAML representation of a GO::Model::Graph object
  type: string
  inputBinding:
    position: 0
- id: obj_storable
  doc: A dump of the perl GO::Model::Graph object. You need Storable from CPAN for
    this to work. This is intended to cache objects on the filesystem, for fast access.
    The obj_storable representation may not be portable
  type: string
  inputBinding:
    position: 1
- id: text_html
  doc: A html-ified OBO output format
  type: string
  inputBinding:
    position: 2
- id: god_b_pre_store
  doc: XML that maps directly to the GODB relational schema (can then be loaded using
    stag-storenode.pl)
  type: string
  inputBinding:
    position: 3
- id: ch_adodb_pre_store
  doc: XML that maps directly to the Chado relational schema (can then be loaded using
    stag-storenode.pl)
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- go2obo_xml
