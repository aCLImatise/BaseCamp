#!/usr/bin/env cwl-runner

baseCommand:
- bam-somaticsniper
class: CommandLineTool
cwlVersion: v1.0
id: bam-somaticsniper
inputs:
- doc: REQUIRED reference sequence in the FASTA format
  id: f
  inputBinding:
    prefix: -f
  type: File
