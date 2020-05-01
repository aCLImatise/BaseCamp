#!/usr/bin/env cwl-runner

baseCommand:
- gen_rand_samp.py
class: CommandLineTool
cwlVersion: v1.0
id: gen_rand_samp.py
inputs:
- doc: Number of samples
  id: samples
  inputBinding:
    prefix: --samples
  type: boolean
- doc: Base output directory.
  id: output_dir
  inputBinding:
    prefix: --output_dir
  type: boolean
- doc: determines how much debug output.
  id: debug_level
  inputBinding:
    prefix: --debug_level
  type: boolean
