#!/usr/bin/env cwl-runner

baseCommand:
- mv
class: CommandLineTool
cwlVersion: v1.0
id: mv
inputs:
- doc: '[=CONTROL]       make a backup of each existing destination file'
  id: backup
  inputBinding:
    prefix: --backup
  type: boolean
- doc: like --backup but does not accept an argument
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: do not prompt before overwriting
  id: force
  inputBinding:
    prefix: --force
  type: boolean
- doc: prompt before overwrite
  id: interactive
  inputBinding:
    prefix: --interactive
  type: boolean
- doc: do not overwrite an existing file
  id: no_clobber
  inputBinding:
    prefix: --no-clobber
  type: boolean
- doc: remove any trailing slashes from each SOURCE argument
  id: strip_trailing_slashes
  inputBinding:
    prefix: --strip-trailing-slashes
  type: boolean
- doc: override the usual backup suffix
  id: suffix
  inputBinding:
    prefix: --suffix
  type: string
- doc: move all SOURCE arguments into DIRECTORY
  id: target_directory
  inputBinding:
    prefix: --target-directory
  type: Directory
- doc: treat DEST as a normal file
  id: no_target_directory
  inputBinding:
    prefix: --no-target-directory
  type: boolean
- doc: move only when the SOURCE file is newer than the destination file or when the
    destination file is missing
  id: update
  inputBinding:
    prefix: --update
  type: boolean
- doc: explain what is being done
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: set SELinux security context of destination file to default type
  id: context
  inputBinding:
    prefix: --context
  type: boolean
