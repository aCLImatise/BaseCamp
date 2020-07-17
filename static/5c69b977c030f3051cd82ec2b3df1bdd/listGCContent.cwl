class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/listGCContent.cwl
inputs:
- id: disregard_bank_locks
  doc: Disregard bank locks and write permissions (spy mode)
  type: boolean
  inputBinding:
    prefix: -s
- id: display_compatible_version
  doc: Display the compatible bank version
  type: boolean
  inputBinding:
    prefix: -v
- id: use_eids_iids
  doc: Use EIDs instead of IIDs for identifiers
  type: boolean
  inputBinding:
    prefix: -e
- id: ignore_clear_range
  doc: Ignore clear range and dump entire sequence
  type: boolean
  inputBinding:
    prefix: -r
- id: dump_contigs_reads
  doc: Dump Contigs instead of reads
  type: boolean
  inputBinding:
    prefix: -C
- id: dump_just_eids
  doc: Dump just the eids listed in file
  type: File
  inputBinding:
    prefix: -E
- id: dump_just_iids
  doc: Dump just the iids listed in file
  type: File
  inputBinding:
    prefix: -I
- id: list_gc_content
  doc: '[options]  -b <bank path>'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- listGCContent
