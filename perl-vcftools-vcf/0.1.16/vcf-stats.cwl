#!/usr/bin/env cwl-runner

baseCommand:
- vcf-stats
class: CommandLineTool
cwlVersion: v1.0
id: vcf-stats
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
- doc: Take an existing dump file and recreate the files (works with -p)
  id: dump
  inputBinding:
    prefix: --dump
  type: File
- doc: <filter1,filter2>             List of filters such as column/field (any value),
    column/field=bin:max (cluster in bins),column/field=value (exact value)
  id: filters
  inputBinding:
    prefix: --filters
  type: boolean
- doc: <dir/string>                   Prefix of output files. If slashes are present,
    directories will be created.
  id: prefix
  inputBinding:
    prefix: --prefix
  type: boolean
- doc: Process only the listed samples, - for none. Excluding unwanted samples may
    increase performance considerably.
  id: samples
  inputBinding:
    prefix: --samples
  type: string
