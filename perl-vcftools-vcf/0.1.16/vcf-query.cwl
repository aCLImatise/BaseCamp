#!/usr/bin/env cwl-runner

baseCommand:
- vcf-query
class: CommandLineTool
cwlVersion: v1.0
id: vcf-query
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: file_vcf_gz
  inputBinding:
    position: 1
  type: File
- doc: <file|list>           List of comma-separated column names or one column name
    per line in a file.
  id: columns
  inputBinding:
    prefix: --columns
  type: boolean
- doc: The default is '%CHROM:%POS\t%REF[\t%SAMPLE=%GT]\n'
  id: format
  inputBinding:
    prefix: --format
  type: string
- doc: List columns.
  id: list_columns
  inputBinding:
    prefix: --list-columns
  type: boolean
- doc: :from-to            Retrieve the region. (Runs tabix.)
  id: region
  inputBinding:
    prefix: --region
  type: string
- doc: Use old version of API, which is slow but more robust.
  id: use_old_method
  inputBinding:
    prefix: --use-old-method
  type: boolean
