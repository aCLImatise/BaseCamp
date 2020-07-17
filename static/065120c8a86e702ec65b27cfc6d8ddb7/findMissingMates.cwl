class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/findMissingMates.cwl
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
- id: looks_mates_virtue
  doc: Looks for mates by virtue of the scaffold
  type: boolean
  inputBinding:
    prefix: -S
- id: only_display_missing
  doc: Only display missing mates (not reads already present in range)
  type: boolean
  inputBinding:
    prefix: -M
- id: use_mate_information
  doc: Don't use mate information, just read tiling
  type: boolean
  inputBinding:
    prefix: -m
- id: contig_eid_interest
  doc: Contig eid of interest
  type: string
  inputBinding:
    prefix: -E
- id: contig_iid_interest
  doc: Contig iid of interest
  type: string
  inputBinding:
    prefix: -I
- id: start_of_range
  doc: Start of range
  type: string
  inputBinding:
    prefix: -x
- id: end_of_range
  doc: End of range
  type: string
  inputBinding:
    prefix: -y
- id: find_missing_mates
  doc: '[options]  -b <bank path>'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- findMissingMates
