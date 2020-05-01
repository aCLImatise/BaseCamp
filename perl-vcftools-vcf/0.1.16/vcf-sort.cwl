#!/usr/bin/env cwl-runner

baseCommand:
- vcf-sort
class: CommandLineTool
cwlVersion: v1.0
id: vcf-sort
inputs:
- doc: Use natural ordering (1,2,10,MT,X) rather then the default (1,10,2,MT,X). This
    requires new version of the unix "sort" command which supports the --version-sort
    option.
  id: chromosomal_order
  inputBinding:
    prefix: --chromosomal-order
  type: boolean
- doc: Change the number of sorts run concurrently to <int>
  id: parallel
  inputBinding:
    prefix: --parallel
  type: long
- doc: Use a directory other than /tmp as the temporary directory for sorting.
  id: temporary_directory
  inputBinding:
    prefix: --temporary-directory
  type: boolean
