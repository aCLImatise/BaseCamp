#!/usr/bin/env cwl-runner

baseCommand:
- enotify
class: CommandLineTool
cwlVersion: v1.0
id: enotify
inputs:
- doc: Contact person's address
  id: email
  inputBinding:
    prefix: -email
  type: boolean
- doc: Name of script or program
  id: tool
  inputBinding:
    prefix: -tool
  type: boolean
