#!/usr/bin/env cwl-runner

baseCommand:
- wham
class: CommandLineTool
cwlVersion: v1.0
id: wham
inputs:
- doc: find a bug, please open a report on github!
  id: if
  inputBinding:
    prefix: -If
  type: string
- doc: ', and -p, control the sensitivity and specificity'
  id: the
  inputBinding:
    prefix: -The
  type: string
- doc: 'have exome data use the -e option for best performance     '
  id: if
  inputBinding:
    prefix: -If
  type: string
