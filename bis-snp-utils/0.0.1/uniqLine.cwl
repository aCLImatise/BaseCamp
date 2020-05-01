#!/usr/bin/env cwl-runner

baseCommand:
- uniqLine.pl
class: CommandLineTool
cwlVersion: v1.0
id: uniqline.pl
inputs:
- doc: ': give the column number that are used to check duplication. could be multiple.
    (e.g. Default: --c 1 --c 2 --c 3 for bed files and --c 1 --c 4 --c 5 for gtf files)'
  id: c
  inputBinding:
    prefix: --c
  type: string
