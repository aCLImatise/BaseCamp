#!/usr/bin/env cwl-runner

baseCommand:
- sdreport
class: CommandLineTool
cwlVersion: v1.0
id: sdreport
inputs:
- doc: (list format) output all data fields for each record as processed
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: (tab format) tabulate selected fields for each record as processed
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: (csv format) comma delimited output of selected fields for each record as processed
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: (summary format) output summary statistics for each unique value of ligand
    ID
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: (supplier format) tabulate supplier details (from Catalyst)
  id: sup
  inputBinding:
    prefix: -sup
  type: boolean
- doc: <IDField> data field to use as ligand ID
  id: id
  inputBinding:
    prefix: -id
  type: boolean
- doc: "'t output column headings in -t and -c formats"
  id: nh
  inputBinding:
    prefix: -nh
  type: string
- doc: old (v3.00) score field names as default columns in -t and -c formats, else
    use v4.00 field names
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: 'normalised score field names as default columns in -t and -c formats (normalised
    = score / #ligand heavy atoms)'
  id: norm
  inputBinding:
    prefix: -norm
  type: string
