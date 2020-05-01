#!/usr/bin/env cwl-runner

baseCommand:
- minimap
class: CommandLineTool
cwlVersion: v1.0
id: minimap
inputs:
- doc: k-mer size [15]
  id: k
  inputBinding:
    prefix: -k
  type: long
- doc: minizer window size [{-k}*2/3]
  id: w
  inputBinding:
    prefix: -w
  type: long
- doc: split index for every ~NUM input bases [4G]
  id: i
  inputBinding:
    prefix: -I
  type: string
- doc: dump index to FILE []
  id: d
  inputBinding:
    prefix: -d
  type: File
- doc: the 1st argument is a index file (overriding -k, -w and -I)
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: filter out top FLOAT fraction of repetitive minimizers [0.001]
  id: f
  inputBinding:
    prefix: -f
  type: double
- doc: bandwidth [500]
  id: r
  inputBinding:
    prefix: -r
  type: long
- doc: merge two chains if FLOAT fraction of minimizers are shared [0.50]
  id: m
  inputBinding:
    prefix: -m
  type: double
- doc: retain a mapping if it consists of >=INT minimizers [4]
  id: c
  inputBinding:
    prefix: -c
  type: long
- doc: min matching length [40]
  id: l
  inputBinding:
    prefix: -L
  type: long
- doc: split a mapping if there is a gap longer than INT [10000]
  id: g
  inputBinding:
    prefix: -g
  type: long
- doc: SDUST threshold; 0 to disable SDUST [0]
  id: t
  inputBinding:
    prefix: -T
  type: long
- doc: skip self and dual mappings
  id: s
  inputBinding:
    prefix: -S
  type: boolean
- doc: drop isolated hits before chaining (EXPERIMENTAL)
  id: o
  inputBinding:
    prefix: -O
  type: boolean
- doc: filtering potential repeats after mapping (EXPERIMENTAL)
  id: p
  inputBinding:
    prefix: -P
  type: boolean
- doc: 'preset (recommended to be applied before other options) [] ava10k: -Sw5 -L100
    -m0 (PacBio/ONT all-vs-all read mapping)'
  id: x
  inputBinding:
    prefix: -x
  type: string
- doc: number of threads [3]
  id: t
  inputBinding:
    prefix: -t
  type: long
- doc: show version number
  id: v
  inputBinding:
    prefix: -V
  type: boolean
