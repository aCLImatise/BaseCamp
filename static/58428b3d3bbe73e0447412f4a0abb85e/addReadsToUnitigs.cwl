class: CommandLineTool
id: addReadsToUnitigs.cwl
inputs:
- id: in_gatekeeper_store
  doc: gatekeeper store
  type: string?
  inputBinding:
    prefix: -g
- id: in_version_tigstore_version
  doc: version   tigStore and version to modify
  type: string?
  inputBinding:
    prefix: -t
- id: in_input_map_coords
  doc: input map coords
  type: File?
  inputBinding:
    prefix: -m
- id: in_gatekeeper_output_fastquidmap
  doc: gatekeeper output fastqUIDmap for read name to IID translation
  type: string?
  inputBinding:
    prefix: -M
- id: in_rebuild_consensus_including
  doc: rebuild consensus including the new reads
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_show_result
  doc: show result
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_verbose
  doc: verbose
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_load_all
  doc: load all reads in gkpStore into memory (faster consensus)
  type: boolean?
  inputBinding:
    prefix: -loadall
- id: in_do_work_discard
  doc: do all the work, but discard the result
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_version
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
- addReadsToUnitigs
