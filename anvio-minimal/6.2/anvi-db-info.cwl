#!/usr/bin/env cwl-runner

baseCommand:
- anvi-db-info
class: CommandLineTool
cwlVersion: v1.0
id: anvi-db-info
inputs:
- doc: An anvi'o database for pan, profile, contigs, or auxiliary data
  id: database_path
  inputBinding:
    position: 0
  type: string
- doc: The key you wish to set or change.
  id: self_key
  inputBinding:
    prefix: --self-key
  type: string
- doc: The value you wish to set for the self key.
  id: self_value
  inputBinding:
    prefix: --self-value
  type: string
- doc: Don't bother me with questions or warnings, just do it.
  id: just_do_it
  inputBinding:
    prefix: --just-do-it
  type: boolean
