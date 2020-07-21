class: CommandLineTool
id: ../../../bank_report.cwl
inputs:
- id: directory_path_report
  doc: The directory path of the bank to report
  type: File
  inputBinding:
    prefix: -b
- id: include_bids_output
  doc: Include BIDs in the output messages (for debugging)
  type: boolean
  inputBinding:
    prefix: -B
- id: report_only_objects_matching_eids
  doc: Report only objects matching EIDs in file
  type: File
  inputBinding:
    prefix: -E
- id: report_only_objects_matching_iids
  doc: Report only objects matching IIDs in file
  type: File
  inputBinding:
    prefix: -I
- id: display_progress_information
  doc: Don't display progress information
  type: boolean
  inputBinding:
    prefix: -p
- id: display_only_ids
  doc: Display only the objects ids
  type: boolean
  inputBinding:
    prefix: -i
- id: disregard_bank_locks
  doc: Disregard bank locks and write permissions (spy mode)
  type: boolean
  inputBinding:
    prefix: -s
- id: just_dump_information
  doc: Just dump the fixed store information
  type: boolean
  inputBinding:
    prefix: -F
- id: display_compatible_version
  doc: Display the compatible bank version
  type: boolean
  inputBinding:
    prefix: -v
- id: bank_report
  doc: '[options]  -b <bank path>  [NCodes]'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bank-report
