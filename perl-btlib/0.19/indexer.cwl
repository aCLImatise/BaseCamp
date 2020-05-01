#!/usr/bin/env cwl-runner

baseCommand:
- indexer
class: CommandLineTool
cwlVersion: v1.0
id: indexer
inputs:
- doc: '|skip      skip junk [1]'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: '|tail      tail pattern [^>]'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: '|included  tail pattern is part of entry [0]'
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: '|pattern   id selection pattern [^>[^|]+\|([^\s|;]+)]'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: multiple indices per entry [0]
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '|idLength  maximum id length [14]'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: maximum position length [10]
  id: lp
  inputBinding:
    prefix: -lp
  type: boolean
- doc: maximum size length [6]
  id: ll
  inputBinding:
    prefix: -ll
  type: boolean
