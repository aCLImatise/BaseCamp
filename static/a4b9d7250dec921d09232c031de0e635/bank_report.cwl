class: CommandLineTool
id: bank_report.cwl
inputs:
- id: in_directory_path_report
  doc: The directory path of the bank to report
  type: File?
  inputBinding:
    prefix: -b
- id: in_include_bids_output
  doc: Include BIDs in the output messages (for debugging)
  type: boolean?
  inputBinding:
    prefix: -B
- id: in_report_only_objects_matching_eids
  doc: Report only objects matching EIDs in file
  type: File?
  inputBinding:
    prefix: -E
- id: in_report_only_objects_matching_iids
  doc: Report only objects matching IIDs in file
  type: File?
  inputBinding:
    prefix: -I
- id: in_display_progress_information
  doc: Don't display progress information
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_display_only_objects
  doc: Display only the objects ids
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_disregard_bank_locks
  doc: Disregard bank locks and write permissions (spy mode)
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_just_dump_information
  doc: Just dump the fixed store information
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_display_compatible_version
  doc: Display the compatible bank version
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_bank_report
  doc: '[options]  -b <bank path>  [NCodes]'
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
- bank-report
