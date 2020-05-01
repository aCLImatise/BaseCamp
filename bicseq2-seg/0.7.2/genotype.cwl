#!/usr/bin/env cwl-runner

baseCommand:
- genotype.pl
class: CommandLineTool
cwlVersion: v1.0
id: genotype.pl
inputs:
- doc: ': the tmp directory; If unspecified, use /tmp/tmpq0pilrwk/bin/tmp/'
  id: tmp
  inputBinding:
    prefix: --tmp
  type: string
