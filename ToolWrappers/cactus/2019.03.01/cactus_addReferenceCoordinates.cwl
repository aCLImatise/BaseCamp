class: CommandLineTool
id: cactus_addReferenceCoordinates.cwl
inputs:
- id: in_loglevel
  doc: ': Set the log level'
  type: boolean
  inputBinding:
    prefix: --logLevel
- id: in_cactus_disk
  doc: ': The location of the flower disk directory'
  type: boolean
  inputBinding:
    prefix: --cactusDisk
- id: in_secondary_disk
  doc: ': The location of secondary disk'
  type: boolean
  inputBinding:
    prefix: --secondaryDisk
- id: in_reference_event_string
  doc: ': String identifying the reference event.'
  type: boolean
  inputBinding:
    prefix: --referenceEventString
- id: in_bottom_up_phase
  doc: ': Do bottom up stage instead of top down.'
  type: boolean
  inputBinding:
    prefix: --bottomUpPhase
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cactus_addReferenceCoordinates
