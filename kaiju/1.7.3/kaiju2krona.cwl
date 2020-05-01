#!/usr/bin/env cwl-runner

baseCommand:
- kaiju2krona
class: CommandLineTool
cwlVersion: v1.0
id: kaiju2krona
inputs:
- doc: Name of input file
  id: i
  inputBinding:
    prefix: -i
  type: File
- doc: Name of output file.
  id: o
  inputBinding:
    prefix: -o
  type: File
- doc: Name of nodes.dmp file
  id: t
  inputBinding:
    prefix: -t
  type: File
- doc: Name of names.dmp file
  id: n
  inputBinding:
    prefix: -n
  type: File
- doc: Enable verbose output.
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: Include count for unclassified reads in output.
  id: u
  inputBinding:
    prefix: -u
  type: boolean
