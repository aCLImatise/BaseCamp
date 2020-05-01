#!/usr/bin/env cwl-runner

baseCommand:
- genmap
class: CommandLineTool
cwlVersion: v1.0
id: genmap
inputs:
- doc: 'Turn this option off to disable version update notifications of the application.
    One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO. Default: 1.'
  id: version_check
  inputBinding:
    prefix: --version-check
  type: boolean
- doc: Display long copyright information.
  id: copyright
  inputBinding:
    prefix: --copyright
  type: boolean
