class: CommandLineTool
id: utgcnsfix.cwl
inputs:
- id: in_show_multialigns
  doc: Show multialigns.
  type: boolean
  inputBinding:
    prefix: -v
- id: in_enable_debugging_option
  doc: Enable debugging option 'verbosemultialign'.
  type: boolean
  inputBinding:
    prefix: -V
- id: in_only_fix_unitig
  doc: Only fix unitig 'iid'.
  type: string
  inputBinding:
    prefix: -u
- id: in_update_tigstore_fixes
  doc: Don't update tigStore with any fixes.
  type: boolean
  inputBinding:
    prefix: -n
- id: in_anything_just_report
  doc: Don't do anything, just report which unitigs are broken.
  type: boolean
  inputBinding:
    prefix: -N
- id: in_load_entire_gkpstore
  doc: Load the entire gkpStore into memory (faster, but more memory)
  type: boolean
  inputBinding:
    prefix: -l
- id: in_partitioned_output_file
  doc: "Partitioned output file.  If 'partition' is not '.' or '0' this must\nbe supplied.\n"
  type: File
  inputBinding:
    prefix: -o
- id: in_t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: in_g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: in_version
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_partition
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_opts
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_partitioned_output_file
  doc: "Partitioned output file.  If 'partition' is not '.' or '0' this must\nbe supplied.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_partitioned_output_file)
cwlVersion: v1.1
baseCommand:
- utgcnsfix
