#!/usr/bin/env cwl-runner

baseCommand:
- iu-gen-matching-fastq-files
class: CommandLineTool
cwlVersion: v1.0
id: iu-gen-matching-fastq-files
inputs:
- doc: Use this flag to indicate that you tested your identifier.
  id: identifier_tested
  inputBinding:
    prefix: --identifier-tested
  type: boolean
- doc: Your identifier code parses an integer value that can link pairs, and is incremental
    throughout the file.
  id: sequential
  inputBinding:
    prefix: --sequential
  type: boolean
