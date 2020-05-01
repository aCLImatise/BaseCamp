#!/usr/bin/env cwl-runner

baseCommand:
- econtact
class: CommandLineTool
cwlVersion: v1.0
id: econtact
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
