#!/usr/bin/env cwl-runner

baseCommand:
- vcf2wig.pl
class: CommandLineTool
cwlVersion: v1.0
id: vcf2wig.pl
inputs:
- doc: ": minimum number of CT reads, otherwise, methy column will be '.' (default:\
    \ 1)"
  id: min_ct
  inputBinding:
    prefix: --minCT
  type: long
