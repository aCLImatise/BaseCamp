#!/usr/bin/env cwl-runner

baseCommand:
- liftover.py
class: CommandLineTool
cwlVersion: v1.0
id: liftover.py
inputs:
- doc: The input list of fusion genes and their genome coordinates.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: The input list of fusion genes and their genome coordinates.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: The chain files needed by liftOver to do the conversion.
  id: chain
  inputBinding:
    prefix: --chain
  type: string
- doc: Path to the liftover executable.
  id: path_lift_over
  inputBinding:
    prefix: --path-liftover
  type: File
- doc: The directory which should be used as temporary directory. By default is the
    OS temporary directory.
  id: tmp_dir
  inputBinding:
    prefix: --tmp_dir
  type: string
