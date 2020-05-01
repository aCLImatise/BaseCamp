#!/usr/bin/env cwl-runner

baseCommand:
- ExpaRNA
class: CommandLineTool
cwlVersion: v1.0
id: exparna
inputs:
- doc: '#   : # minmal size of an EPM (gamma) 2 is default and returns all EPMs with
    at least 2 nucleotides'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: '#   : # determines the maximal number of returned EPMs 0 is default an returns
    all EPMs 1 is the largest EPM and so on...'
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: '#   : 1: initial EPM score = EPM size (default) : 2: initial EPM score = (EPM
    size)^2 (prefers larger patterns in LCS-EPM)'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: ': Do NOT ignore gaps in input sequences'
  id: g
  inputBinding:
    prefix: -g
  type: boolean
- doc: '#   : write all output to dir <#>'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: ": write LCS-EPM into file 'LCSEPM_align.aln' as alignment"
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: ": write LCS-EPM into file 'LCSEPM_LocARNA_input.fa' as constraint input for\
    \ LocARNA"
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: ": write LCS-EPM into file 'LCSEPM.epm' as single EPMs"
  id: e
  inputBinding:
    prefix: -e
  type: boolean
- doc: ": write all EPMs into file 'allEPM.epm' (depends on -s/ -n)"
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: ': DO NOT save LCS-EPM as colored postscript file'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: ': determine similarity/differences of LCS-EPM with reference alignment via
    two colored postscript files'
  id: a
  inputBinding:
    prefix: -A
  type: boolean
- doc: ': verbose output'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
