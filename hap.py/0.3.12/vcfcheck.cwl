#!/usr/bin/env cwl-runner

baseCommand:
- vcfcheck
class: CommandLineTool
cwlVersion: v1.0
id: vcfcheck
inputs:
- doc: The input file
  id: input_file
  inputBinding:
    prefix: --input-file
  type: string
- doc: '[ --output-file ] arg   The output JSON file with basic counts.'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '[ --location ] arg      Start location.'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: Maximum number of records to process
  id: limit_records
  inputBinding:
    prefix: --limit-records
  type: string
- doc: Print a message every N records.
  id: message_every
  inputBinding:
    prefix: --message-every
  type: string
- doc: '[ --apply-filters ] arg Apply filtering in VCF.'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: "[ --strict-homref ] arg Be strict about hom-ref assertions (i.e. don't  allow\
    \ these to overlap)."
  id: h
  inputBinding:
    prefix: -H
  type: boolean
- doc: Check if turning this file into BCF will succeed  or fail.
  id: check_bcf_errors
  inputBinding:
    prefix: --check-bcf-errors
  type: string
- doc: '[ --all-warnings ] arg  Show all warnings, not just the first instance.'
  id: w
  inputBinding:
    prefix: -W
  type: boolean
