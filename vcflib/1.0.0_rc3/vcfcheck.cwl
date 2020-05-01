#!/usr/bin/env cwl-runner

baseCommand:
- vcfcheck
class: CommandLineTool
cwlVersion: v1.0
id: vcfcheck
inputs:
- doc: ''
  id: vcf_file
  inputBinding:
    position: 0
  type: string
- doc: FASTA reference file to use to obtain primer sequences
  id: fast_a_reference
  inputBinding:
    prefix: --fasta-reference
  type: boolean
- doc: a record fails, don't print it.  Otherwise do.
  id: exclude_failures
  inputBinding:
    prefix: --exclude-failures
  type: string
- doc: Print if the record fails, otherwise not.
  id: keep_failures
  inputBinding:
    prefix: --keep-failures
  type: boolean
