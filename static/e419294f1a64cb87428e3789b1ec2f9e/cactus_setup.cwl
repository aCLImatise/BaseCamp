class: CommandLineTool
id: cactus_setup.cwl
inputs:
- id: in_loglevel
  doc: ': Set the log level'
  type: boolean?
  inputBinding:
    prefix: --logLevel
- id: in_cactus_disk
  doc: ': The location of the flower disk directory'
  type: boolean?
  inputBinding:
    prefix: --cactusDisk
- id: in_species_tree
  doc: ': The species tree, which will form the skeleton of the event tree'
  type: boolean?
  inputBinding:
    prefix: --speciesTree
- id: in_out_group_events
  doc: ': Leaf events in the species tree identified as outgroups'
  type: boolean?
  inputBinding:
    prefix: --outgroupEvents
- id: in_make_event_headers_alphanumeric
  doc: ': Remove non alpha-numeric characters from event header names'
  type: boolean?
  inputBinding:
    prefix: --makeEventHeadersAlphaNumeric
- id: in_debug
  doc: ': Run some extra debug checks at the end'
  type: boolean?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cactus_setup
