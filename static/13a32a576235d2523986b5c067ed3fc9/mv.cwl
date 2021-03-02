class: CommandLineTool
id: mv.cwl
inputs:
- id: in_backup
  doc: '[=CONTROL]       make a backup of each existing destination file'
  type: boolean?
  inputBinding:
    prefix: --backup
- id: in__backup_accept
  doc: like --backup but does not accept an argument
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_force
  doc: do not prompt before overwriting
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_interactive
  doc: prompt before overwrite
  type: boolean?
  inputBinding:
    prefix: --interactive
- id: in_no_clobber
  doc: do not overwrite an existing file
  type: boolean?
  inputBinding:
    prefix: --no-clobber
- id: in_strip_trailing_slashes
  doc: remove any trailing slashes from each SOURCE
  type: boolean?
  inputBinding:
    prefix: --strip-trailing-slashes
- id: in_target_directory
  doc: move all SOURCE arguments into DIRECTORY
  type: Directory?
  inputBinding:
    prefix: --target-directory
- id: in_no_target_directory
  doc: treat DEST as a normal file
  type: boolean?
  inputBinding:
    prefix: --no-target-directory
- id: in_update
  doc: "move only when the SOURCE file is newer\nthan the destination file or when\
    \ the\ndestination file is missing"
  type: boolean?
  inputBinding:
    prefix: --update
- id: in_verbose
  doc: explain what is being done
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_context
  doc: "set SELinux security context of destination\nfile to default type"
  type: boolean?
  inputBinding:
    prefix: --context
- id: in_argument
  doc: -S, --suffix=SUFFIX          override the usual backup suffix
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
- mv
