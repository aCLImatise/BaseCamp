#!/usr/bin/env cwl-runner

baseCommand:
- valid_cells
class: CommandLineTool
cwlVersion: v1.0
id: valid_cells
inputs:
- doc: Path to the output directory
  id: out_dir
  inputBinding:
    position: 0
  type: string
- doc: Verbose execution.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
