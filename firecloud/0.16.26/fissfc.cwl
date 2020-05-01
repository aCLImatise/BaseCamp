#!/usr/bin/env cwl-runner

baseCommand:
- fissfc
class: CommandLineTool
cwlVersion: v1.0
id: fissfc
inputs:
- doc: 'Firecloud API root URL [default: https://api.firecloud.org/api/]'
  id: url
  inputBinding:
    prefix: --url
  type: string
- doc: Firecloud credentials file
  id: credentials
  inputBinding:
    prefix: --credentials
  type: string
- doc: Emit progressively more detailed feedback during execution, e.g. to confirm
    when actions have completed or to show URL and parameters of REST calls. Multiple
    -V may be given.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Assume yes for any prompts
  id: yes
  inputBinding:
    prefix: --yes
  type: boolean
- doc: '[CMD], --list [CMD] list or search available commands and exit'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: Show the code for the given command(s) and exit
  id: function
  inputBinding:
    prefix: --function
  type:
    items: string
    type: array
