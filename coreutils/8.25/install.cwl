#!/usr/bin/env cwl-runner

baseCommand:
- install
class: CommandLineTool
cwlVersion: v1.0
id: install
inputs:
- doc: strip symbol tables
  id: strip
  inputBinding:
    prefix: --strip
  type: boolean
- doc: program used to strip binaries
  id: strip_program
  inputBinding:
    prefix: --strip-program
  type: string
- doc: override the usual backup suffix
  id: suffix
  inputBinding:
    prefix: --suffix
  type: string
- doc: copy all SOURCE arguments into DIRECTORY
  id: target_directory
  inputBinding:
    prefix: --target-directory
  type: Directory
- doc: treat DEST as a normal file
  id: no_target_directory
  inputBinding:
    prefix: --no-target-directory
  type: boolean
- doc: print the name of each directory as it is created
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: preserve SELinux security context
  id: preserve_context
  inputBinding:
    prefix: --preserve-context
  type: boolean
- doc: set SELinux security context of destination file to default type
  id: z
  inputBinding:
    prefix: -Z
  type: boolean
- doc: '[=CTX]     like -Z, or if CTX is specified then set the SELinux or SMACK security
    context to CTX'
  id: context
  inputBinding:
    prefix: --context
  type: boolean
