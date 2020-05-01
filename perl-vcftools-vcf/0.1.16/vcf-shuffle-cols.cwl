#!/usr/bin/env cwl-runner

baseCommand:
- vcf-shuffle-cols
class: CommandLineTool
cwlVersion: v1.0
id: vcf-shuffle-cols
inputs:
- doc: The file with the correct order of the columns.
  id: template
  inputBinding:
    prefix: --template
  type: File
