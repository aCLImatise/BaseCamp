#!/usr/bin/env cwl-runner

baseCommand:
- anvi-help
class: CommandLineTool
cwlVersion: v1.0
id: anvi-help
inputs:
- doc: Find programs associated with this search term. if you want all programs, use
    'ALL'
  id: search_term
  inputBinding:
    position: 0
  type: string
- doc: Restrict to programs that require this search term
  id: requires
  inputBinding:
    prefix: --requires
  type: boolean
- doc: Restrict to programs that provide this search term
  id: provides
  inputBinding:
    prefix: --provides
  type: boolean
- doc: Restrict to programs that contain this search term in their name
  id: name
  inputBinding:
    prefix: --name
  type: boolean
- doc: Which information would you like to be in the report? Mess with this if you
    are disappointed with the default. Possibles are Description, Tags, Requires,
    Provides, Status, and Resources. Add multiple of them with commas (no whitespace).
    For example, if you wanted Description and Resources, you would put here Description,Resources
  id: report
  inputBinding:
    prefix: --report
  type: string
