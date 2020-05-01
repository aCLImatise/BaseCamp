#!/usr/bin/env cwl-runner

baseCommand:
- nasp
class: CommandLineTool
cwlVersion: v1.0
id: nasp
inputs:
- doc: Path to the reference fasta.
  id: reference_fast_a
  inputBinding:
    position: 0
  type: string
- doc: Folder to store the output files.
  id: output_folder
  inputBinding:
    position: 1
  type: string
- doc: Path to the configuration xml file.
  id: config
  inputBinding:
    prefix: --config
  type: string
