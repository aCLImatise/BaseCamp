class: CommandLineTool
id: mixcr_exportReadsForClones.cwl
inputs:
- id: in_id
  doc: '[<ids>...]      [cloneId1 [cloneId2 [cloneId3]]]'
  type: boolean
  inputBinding:
    prefix: --id
- id: in_verbose
  doc: Verbose warning messages.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_force_overwrite
  doc: Force overwrite of output file(s).
  type: File
  inputBinding:
    prefix: --force-overwrite
- id: in_no_warnings
  doc: Suppress all warning messages.
  type: boolean
  inputBinding:
    prefix: --no-warnings
- id: in_separate
  doc: "Create separate files for each clone. File or pair of '_R1'/'_R2' files, with\n\
    '_clnN' suffix, where N is clone index, will be created for each clone\nindex.\n"
  type: boolean
  inputBinding:
    prefix: --separate
- id: in_fs
  doc: ''
  type: boolean
  inputBinding:
    prefix: -fs
- id: in_scr
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_export_reads_for_clones
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_ids
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force_overwrite
  doc: Force overwrite of output file(s).
  type: File
  outputBinding:
    glob: $(inputs.in_force_overwrite)
cwlVersion: v1.1
baseCommand:
- mixcr
- exportReadsForClones
