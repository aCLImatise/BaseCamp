#!/usr/bin/env cwl-runner

baseCommand:
- LoRMA
class: CommandLineTool
cwlVersion: v1.0
id: lorma
inputs:
- doc: "(1 arg) :    Number of best friends  [default '3']"
  id: best_friends
  inputBinding:
    prefix: -bestfriends
  type: boolean
- doc: "(1 arg) :    Number of friends  [default '7']"
  id: friends
  inputBinding:
    prefix: -friends
  type: boolean
- doc: "(1 arg) :    kmer length  [default '31']"
  id: k
  inputBinding:
    prefix: -k
  type: boolean
- doc: '(1 arg) :    output file for discarded reads'
  id: discarded
  inputBinding:
    prefix: -discarded
  type: boolean
- doc: '(1 arg) :    output file for corrected reads'
  id: output
  inputBinding:
    prefix: -output
  type: boolean
- doc: '(1 arg) :    file(s) of long reads'
  id: reads
  inputBinding:
    prefix: -reads
  type: boolean
- doc: "(1 arg) :    number of cores  [default '1']"
  id: nb_cores
  inputBinding:
    prefix: -nb-cores
  type: boolean
- doc: "(1 arg) :    verbosity level  [default '1']"
  id: verbose
  inputBinding:
    prefix: -verbose
  type: boolean
