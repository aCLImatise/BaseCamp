class: CommandLineTool
id: mv.cwl
inputs:
- id: backup
  doc: '[=CONTROL]       make a backup of each existing destination file'
  type: boolean
  inputBinding:
    prefix: --backup
- id: b
  doc: like --backup but does not accept an argument
  type: boolean
  inputBinding:
    prefix: -b
- id: force
  doc: do not prompt before overwriting
  type: boolean
  inputBinding:
    prefix: --force
- id: interactive
  doc: prompt before overwrite
  type: boolean
  inputBinding:
    prefix: --interactive
- id: no_clobber
  doc: do not overwrite an existing file
  type: boolean
  inputBinding:
    prefix: --no-clobber
- id: strip_trailing_slashes
  doc: remove any trailing slashes from each SOURCE argument
  type: boolean
  inputBinding:
    prefix: --strip-trailing-slashes
- id: suffix
  doc: override the usual backup suffix
  type: string
  inputBinding:
    prefix: --suffix
- id: target_directory
  doc: move all SOURCE arguments into DIRECTORY
  type: Directory
  inputBinding:
    prefix: --target-directory
- id: no_target_directory
  doc: treat DEST as a normal file
  type: boolean
  inputBinding:
    prefix: --no-target-directory
- id: update
  doc: move only when the SOURCE file is newer than the destination file or when the
    destination file is missing
  type: boolean
  inputBinding:
    prefix: --update
- id: verbose
  doc: explain what is being done
  type: boolean
  inputBinding:
    prefix: --verbose
- id: context
  doc: set SELinux security context of destination file to default type
  type: boolean
  inputBinding:
    prefix: --context
outputs: []
cwlVersion: v1.1
baseCommand:
- mv
