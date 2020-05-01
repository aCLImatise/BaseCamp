#!/usr/bin/env cwl-runner

baseCommand:
- huge-delete.pl
class: CommandLineTool
cwlVersion: v1.0
id: huge-delete.pl
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: source
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: destination
  inputBinding:
    position: 2
  type: string
- doc: Bigrams with counts < L will be removed from sample.
  id: remove
  inputBinding:
    prefix: --remove
  type: string
- doc: Bigrams with counts > L will be removed from sample. -remove must be smaller
    than --uremove.
  id: u_remove
  inputBinding:
    prefix: --uremove
  type: string
- doc: Bigrams with counts < F will not be displayed.
  id: frequency
  inputBinding:
    prefix: --frequency
  type: string
- doc: Bigrams with counts > F will not be displayed. --frequency must be smaller
    than --ufrequency.
  id: u_frequency
  inputBinding:
    prefix: --ufrequency
  type: string
