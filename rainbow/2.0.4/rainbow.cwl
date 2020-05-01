#!/usr/bin/env cwl-runner

baseCommand:
- rainbow
class: CommandLineTool
cwlVersion: v1.0
id: rainbow
inputs:
- doc: 'Read length, default: 0 variable'
  id: l
  inputBinding:
    prefix: -l
  type: long
- doc: Maximum mismatches [4]
  id: m
  inputBinding:
    prefix: -m
  type: long
- doc: Exactly matching threshold [2000]
  id: e
  inputBinding:
    prefix: -e
  type: long
- doc: Low level of polymorphism
  id: l
  inputBinding:
    prefix: -L
  type: boolean
- doc: Input rbasm output file [stdin]
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: output assembly
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: Output file for merged contigs, one line per cluster [stdout]
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: Maximum number of divided clusters to merge [300]
  id: n
  inputBinding:
    prefix: -N
  type: long
- doc: Minimum overlap when assemble two reads (valid only when '-a' is opened) [5]
  id: l
  inputBinding:
    prefix: -l
  type: long
- doc: Minimum fraction of similarity when assembly (valid only when '-a' is opened)
    [0.90]
  id: f
  inputBinding:
    prefix: -f
  type: double
- doc: Minimum number of reads to assemble (valid only when '-a' is opened) [5]
  id: r
  inputBinding:
    prefix: -r
  type: long
- doc: Maximum number of reads to assemble (valid only when '-a' is opened) [300]
  id: r
  inputBinding:
    prefix: -R
  type: long
