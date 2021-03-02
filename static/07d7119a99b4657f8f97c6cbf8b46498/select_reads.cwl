class: CommandLineTool
id: select_reads.cwl
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
- id: in_specify_file_containing_list_iids_print
  doc: Specify file containing list of iid's to print
  type: File?
  inputBinding:
    prefix: -i
- id: in_specify_file_containing_list_eids_print
  doc: Specify file containing list of eid's to print
  type: File?
  inputBinding:
    prefix: -I
- id: in_just_output_eid
  doc: Just output read names that would be printed by eid
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_just_output_iid
  doc: Just output read names that would be printed by iid
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_automatically_consider_mates
  doc: Automatically consider mates
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_nullify_mates_printing
  doc: Nullify mates in FRG if not printing both mate-pairs
  type: boolean?
  inputBinding:
    prefix: -N
- id: in_file_list_reads_iids
  doc: File of list reads iids to exclude
  type: File?
  inputBinding:
    prefix: -x
- id: in_file_list_reads_eids
  doc: File of list reads eids to exclude
  type: File?
  inputBinding:
    prefix: -X
- id: in_bank_path
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- select-reads
