#!/usr/bin/env cwl-runner

baseCommand:
- sort-snos.pl
class: CommandLineTool
cwlVersion: v1.0
id: sort-snos.pl
inputs:
- doc: ':  sort snos by position of hit in query sequence'
  id: h
  inputBinding:
    prefix: -H
  type: boolean
- doc: ':  sort snos by position & Remove lower-scoring duplicate hits (both start
    & end bounds must match'
  id: r
  inputBinding:
    prefix: -R
  type: boolean
- doc: ':  same as -R, but only start bound must match to count as duplicate'
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: ':  sort snos, output only hits to Mapped sites'
  id: m
  inputBinding:
    prefix: -M
  type: boolean
- doc: ':  sort snos, output only hits to Unmapped sites'
  id: u
  inputBinding:
    prefix: -U
  type: boolean
- doc: ':  sort snos, output only top <int> hits per meth site (def=50)'
  id: t
  inputBinding:
    prefix: -T
  type: long
- doc: ':  sort snos, require minimum score'
  id: s
  inputBinding:
    prefix: -S
  type: string
- doc: ":  sort snos, don't include hits _over_ max <score>"
  id: m
  inputBinding:
    prefix: -m
  type: string
- doc: ':  Extract only snos with <expr> in header line'
  id: e
  inputBinding:
    prefix: -e
  type: string
- doc: ":  Don't sort -- just filter & output in same order"
  id: f
  inputBinding:
    prefix: -F
  type: boolean
