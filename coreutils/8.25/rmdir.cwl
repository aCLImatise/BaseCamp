#!/usr/bin/env cwl-runner

baseCommand:
- rmdir
class: CommandLineTool
cwlVersion: v1.0
id: rmdir
inputs:
- doc: ignore each failure that is solely because a directory is non-empty
  id: ignore_fail_on_non_empty
  inputBinding:
    prefix: --ignore-fail-on-non-empty
  type: boolean
- doc: remove DIRECTORY and its ancestors; e.g., 'rmdir -p a/b/c' is similar to 'rmdir
    a/b/c a/b a'
  id: parents
  inputBinding:
    prefix: --parents
  type: boolean
- doc: output a diagnostic for every directory processed
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
