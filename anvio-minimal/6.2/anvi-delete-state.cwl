#!/usr/bin/env cwl-runner

baseCommand:
- anvi-delete-state
class: CommandLineTool
cwlVersion: v1.0
id: anvi-delete-state
inputs:
- doc: Anvi'o pan or profile database (and even genes database in appropriate contexts).
  id: pan_or_profile_db
  inputBinding:
    prefix: --pan-or-profile-db
  type: string
- doc: The state name to ... delete :(
  id: state
  inputBinding:
    prefix: --state
  type: string
- doc: Show available states and exit.
  id: list_states
  inputBinding:
    prefix: --list-states
  type: boolean
