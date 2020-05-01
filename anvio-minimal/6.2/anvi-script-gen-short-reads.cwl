#!/usr/bin/env cwl-runner

baseCommand:
- anvi-script-gen-short-reads
class: CommandLineTool
cwlVersion: v1.0
id: anvi-script-gen-short-reads
inputs:
- doc: Configuration file
  id: config_file
  inputBinding:
    position: 0
  type: string
- doc: Output FASTA file path
  id: output_file_path
  inputBinding:
    prefix: --output-file-path
  type: string
