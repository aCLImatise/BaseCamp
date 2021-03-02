class: CommandLineTool
id: listGCContent.cwl
inputs:
- id: in_disregard_bank_locks
  doc: Disregard bank locks and write permissions (spy mode)
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_display_compatible_version
  doc: Display the compatible bank version
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_use_eids_instead
  doc: Use EIDs instead of IIDs for identifiers
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_ignore_clear_range
  doc: Ignore clear range and dump entire sequence
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_dump_contigs_instead
  doc: Dump Contigs instead of reads
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_dump_just_eids
  doc: Dump just the eids listed in file
  type: File?
  inputBinding:
    prefix: -E
- id: in_dump_just_iids
  doc: Dump just the iids listed in file
  type: File?
  inputBinding:
    prefix: -I
- id: in_list_gc_content
  doc: '[options]  -b <bank path>'
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
- listGCContent
