#!/usr/bin/env cwl-runner

baseCommand:
- fmlrc
class: CommandLineTool
cwlVersion: v1.0
id: fmlrc
inputs:
- doc: ''
  id: comp_ms_bwt_npy
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: long_read_sfa
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: corrected_read_sfa
  inputBinding:
    position: 2
  type: string
- doc: print version number and exit
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: 'small k-mer size (default: 21)'
  id: k
  inputBinding:
    prefix: -k
  type: long
- doc: 'large K-mer size (default: 59), set K=k for single pass'
  id: k
  inputBinding:
    prefix: -K
  type: long
- doc: number of correction threads
  id: p
  inputBinding:
    prefix: -p
  type: long
- doc: 'index of read to start with (default: 0)'
  id: b
  inputBinding:
    prefix: -b
  type: long
- doc: 'index of read to end with (default: end of file)'
  id: e
  inputBinding:
    prefix: -e
  type: long
- doc: 'absolute minimum count to consider a path (default: 5)'
  id: m
  inputBinding:
    prefix: -m
  type: long
- doc: 'dynamic minimum fraction of median to consider a path (default: .10)'
  id: f
  inputBinding:
    prefix: -f
  type: double
- doc: 'set branch limit to <INT>*<k or K> (default: 4)'
  id: b
  inputBinding:
    prefix: -B
  type: long
- doc: build a sampled FM-index instead of bit arrays
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: 'FM-index is sampled every 2**<INT> values (default: 8); requires -i'
  id: f
  inputBinding:
    prefix: -F
  type: long
- doc: verbose output
  id: v
  inputBinding:
    prefix: -V
  type: boolean
