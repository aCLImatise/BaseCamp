#!/usr/bin/env cwl-runner

baseCommand:
- shred
class: CommandLineTool
cwlVersion: v1.0
id: shred
inputs:
- doc: change permissions to allow writing if necessary
  id: force
  inputBinding:
    prefix: --force
  type: boolean
- doc: overwrite N times instead of the default (3)
  id: iterations
  inputBinding:
    prefix: --iterations
  type: string
- doc: get random bytes from FILE
  id: random_source
  inputBinding:
    prefix: --random-source
  type: File
- doc: shred this many bytes (suffixes like K, M, G accepted)
  id: size
  inputBinding:
    prefix: --size
  type: string
- doc: truncate and remove file after overwriting
  id: u
  inputBinding:
    prefix: -u
  type: boolean
- doc: '[=HOW]  like -u but give control on HOW to delete;  See below'
  id: remove
  inputBinding:
    prefix: --remove
  type: boolean
- doc: show progress
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: do not round file sizes up to the next full block; this is the default for
    non-regular files
  id: exact
  inputBinding:
    prefix: --exact
  type: boolean
- doc: add a final overwrite with zeros to hide shredding
  id: zero
  inputBinding:
    prefix: --zero
  type: boolean
