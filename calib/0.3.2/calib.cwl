#!/usr/bin/env cwl-runner

baseCommand:
- calib
class: CommandLineTool
cwlVersion: v1.0
id: calib
inputs:
- doc: '--input-forward                   (type: string;   REQUIRED paramter)'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: '--input-reverse                   (type: string;   REQUIRED paramter)'
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: '--output-prefix                   (type: string;   REQUIRED paramter)'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '--silent                          (type: no value; default: unset)'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: '--no-sort                         (type: no value; default:  unset)'
  id: q
  inputBinding:
    prefix: -q
  type: boolean
- doc: '--gzip-input                      (type: no value; default:  unset)'
  id: g
  inputBinding:
    prefix: -g
  type: boolean
- doc: '--barcode-length                  (type: int;      REQUIRED paramter unless
    -l1 and -l2 are provided)'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: '--barcode-length-1                (type: int;      REQUIRED paramter unless
    -l is provided)'
  id: l1
  inputBinding:
    prefix: -l1
  type: boolean
- doc: '--barcode-length-2                (type: int;      REQUIRED paramter unless
    -l is provided)'
  id: l2
  inputBinding:
    prefix: -l2
  type: boolean
- doc: '--ignored-sequence-prefix-length  (type: int;      default: 0)'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: '--minimizer-count                 (type: int;      default: Depends on observed
    read length;)'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '--kmer-size                       (type: int;      default: Depends on observed
    read length;)'
  id: k
  inputBinding:
    prefix: -k
  type: boolean
- doc: '--error-tolerance                 (type: int;      default: Depends on observed
    read length;)'
  id: e
  inputBinding:
    prefix: -e
  type: boolean
- doc: '--minimizer-threshold             (type: int;      default: Depends on observed
    read length;)'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: '--threads                         (type: int;      default: 1)'
  id: c
  inputBinding:
    prefix: -c
  type: boolean
