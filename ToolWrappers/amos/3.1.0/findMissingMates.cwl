class: CommandLineTool
id: findMissingMates.cwl
inputs:
- id: in_disregard_bank_locks
  doc: Disregard bank locks and write permissions (spy mode)
  type: boolean
  inputBinding:
    prefix: -s
- id: in_display_compatible_version
  doc: Display the compatible bank version
  type: boolean
  inputBinding:
    prefix: -v
- id: in_looks_mates_virtue
  doc: Looks for mates by virtue of the scaffold
  type: boolean
  inputBinding:
    prefix: -S
- id: in_only_display_missing
  doc: Only display missing mates (not reads already present in range)
  type: boolean
  inputBinding:
    prefix: -M
- id: in_use_mate_information
  doc: Don't use mate information, just read tiling
  type: boolean
  inputBinding:
    prefix: -m
- id: in_contig_eid_interest
  doc: Contig eid of interest
  type: string
  inputBinding:
    prefix: -E
- id: in_contig_iid_interest
  doc: Contig iid of interest
  type: string
  inputBinding:
    prefix: -I
- id: in_start_of_range
  doc: Start of range
  type: string
  inputBinding:
    prefix: -x
- id: in_end_of_range
  doc: End of range
  type: string
  inputBinding:
    prefix: -y
- id: in_find_missing_mates
  doc: '[options]  -b <bank path>'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- findMissingMates
