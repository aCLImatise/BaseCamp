#!/usr/bin/env cwl-runner

baseCommand:
- extract_proteome_from_gff
class: CommandLineTool
cwlVersion: v1.0
id: extract_proteome_from_gff
inputs:
- doc: output suffix [proteome.faa]
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: translation table [11]
  id: t
  inputBinding:
    prefix: -t
  type: long
- doc: filter sequences with missing data
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: verbose output to STDOUT
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: output directory
  id: d
  inputBinding:
    prefix: -d
  type: string
- doc: print version and exit
  id: w
  inputBinding:
    prefix: -w
  type: boolean
