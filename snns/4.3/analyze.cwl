#!/usr/bin/env cwl-runner

baseCommand:
- analyze
class: CommandLineTool
cwlVersion: v1.0
id: analyze
inputs:
- doc: ': report wrong classified patterns (default)'
  id: w
  inputBinding:
    prefix: -w
  type: boolean
- doc: ': report right classified patterns'
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: ': report unclassified patterns'
  id: u
  inputBinding:
    prefix: -u
  type: boolean
- doc: ': same as -w -r -u'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: '"t c"         : report confusion from class t to c (-1 = noclass)'
  id: s
  inputBinding:
    prefix: -S
  type: boolean
- doc: ': show statistic information'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: ': show class statistic information'
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: ': show confusion matrix'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: ': verbous mode'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: ': select error function  <function> = [402040 | WTA | band] default = 402040'
  id: e
  inputBinding:
    prefix: -e
  type: string
- doc: ': lower bound level (see documentation)  default: 0.4 for 402040 default:
    0.0 for WTA default: 0.1 for band'
  id: l
  inputBinding:
    prefix: -l
  type: double
- doc: ': upper bound level (see documentation)  default: 0.6 for 402040 default:
    0.0 for WTA default: 0.1 for band'
  id: h
  inputBinding:
    prefix: -h
  type: double
- doc: ': input result file (default stdin)'
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: ': output file (default stdout)'
  id: o
  inputBinding:
    prefix: -o
  type: string
