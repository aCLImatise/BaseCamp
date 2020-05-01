#!/usr/bin/env cwl-runner

baseCommand:
- daligner
class: CommandLineTool
cwlVersion: v1.0
id: daligner
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
- doc: ': The trace point spacing for encoding alignments.'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: ': Bridge consecutive aligned segments into one if possible'
  id: b
  inputBinding:
    prefix: -B
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
- doc: ': Do block level sorts and merges in directory -P.'
  id: p
  inputBinding:
    prefix: -P
  type: boolean
- doc: ': Soft mask the blocks with the specified mask.'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: ': Verbose mode, output statistics as proceed.'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: ': sort .las by A-read,A-position pairs for map usecase off => sort .las by
    A,B-read pairs for overlap piles'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: ': Compare subjet to target, but not vice versa.'
  id: a
  inputBinding:
    prefix: -A
  type: boolean
- doc: ': Compare reads to themselves'
  id: i
  inputBinding:
    prefix: -I
  type: boolean
