#!/usr/bin/env cwl-runner

baseCommand:
- HPC.daligner
class: CommandLineTool
cwlVersion: v1.0
id: hpc.daligner
inputs:
- doc: ': Look for k-mers in averlapping bands of size 2^-w.'
  id: w
  inputBinding:
    prefix: -w
  type: boolean
- doc: ': Ignore k-mers that occur >= -t times in a block.'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: ': Use only -M GB of memory by ignoring most frequent k-mers.'
  id: m
  inputBinding:
    prefix: -M
  type: boolean
- doc: ': Look for alignments with -e percent similarity.'
  id: e
  inputBinding:
    prefix: -e
  type: boolean
- doc: ': Look for alignments of length >= -l.'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: ': Use -s as the trace point spacing for encoding alignments.'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: ': HGAP option: align only target reads of length >= -H.'
  id: h
  inputBinding:
    prefix: -H
  type: boolean
- doc: ': Use -T threads.'
  id: t
  inputBinding:
    prefix: -T
  type: boolean
- doc: ': Do first level sort and merge in directory -P.'
  id: p
  inputBinding:
    prefix: -P
  type: boolean
- doc: ': Soft mask the blocks with the specified mask.'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: ': Run all commands in script in verbose mode.'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: ': Instruct LAsort & LAmerge to sort only on (a,ab).'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: ': Put .las files for each target block in a sub-directory'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: ': # of block compares per daligner job'
  id: b
  inputBinding:
    prefix: -B
  type: boolean
- doc: ': Place script bundles in separate files with prefix <name>'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
