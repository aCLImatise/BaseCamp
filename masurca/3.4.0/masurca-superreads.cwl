#!/usr/bin/env cwl-runner

baseCommand:
- masurca-superreads
class: CommandLineTool
cwlVersion: v1.0
id: masurca-superreads
inputs:
- doc: Create the super reads in the directory given by PATH. Create the directory
    if it does not exists.
  id: output_dir
  inputBinding:
    prefix: --output-dir
  type: File
