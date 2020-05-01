#!/usr/bin/env cwl-runner

baseCommand:
- isatab_validate
class: CommandLineTool
cwlVersion: v1.0
id: isatab_validate
inputs:
- doc: Path to input investigation file
  id: input_investigation_file
  inputBinding:
    prefix: --input-investigation-file
  type: string
- doc: Show duplicated warnings, i.e. with same message and same category (False by
    default)
  id: show_duplicate_warnings
  inputBinding:
    prefix: --show-duplicate-warnings
  type: boolean
