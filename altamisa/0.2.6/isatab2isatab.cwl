#!/usr/bin/env cwl-runner

baseCommand:
- isatab2isatab
class: CommandLineTool
cwlVersion: v1.0
id: isatab2isatab
inputs:
- doc: Path to input investigation file
  id: input_investigation_file
  inputBinding:
    prefix: --input-investigation-file
  type: string
- doc: Path to output investigation file, stdout ("-") by default. Needs to be in
    a different directory!
  id: output_investigation_file
  inputBinding:
    prefix: --output-investigation-file
  type: string
- doc: Character for quoting, e.g. "\"" (None by default)
  id: quotes
  inputBinding:
    prefix: --quotes
  type: string
- doc: Suppress ISA-tab related warnings (False by default)
  id: no_warnings
  inputBinding:
    prefix: --no-warnings
  type: boolean
