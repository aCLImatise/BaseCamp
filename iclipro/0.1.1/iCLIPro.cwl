#!/usr/bin/env cwl-runner

baseCommand:
- iCLIPro
class: CommandLineTool
cwlVersion: v1.0
id: iclipro
inputs:
- doc: ''
  id: in_bam
  inputBinding:
    position: 0
  type: string
- doc: output folder (default is cwd - current working directory)
  id: o
  inputBinding:
    prefix: -o
  type: Directory
- doc: 'genomic bin size (100..1000, default: 300)'
  id: b
  inputBinding:
    prefix: -b
  type: long
- doc: 'number of reads required in bin (20..500, default: 50)'
  id: r
  inputBinding:
    prefix: -r
  type: long
- doc: 'flanking distances when calculating start site overlap ratio (3..15, default:
    5)'
  id: s
  inputBinding:
    prefix: -s
  type: long
- doc: 'use only reads with minimum mapping quality (mapq) (0..100, default: 10)'
  id: q
  inputBinding:
    prefix: -q
  type: long
- doc: 'read len groups (e.g.: "A:16-39,A1:16-25,A2:26-32,A3:33-39,L:20,B:42")'
  id: g
  inputBinding:
    prefix: -g
  type: string
- doc: 'generate read overlap maps based on these comparisons (e.g.: "A1-A3,A2-A3,A1-B,A2-B,A3-B,L-B,A-B")'
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: 'flanking region for read overlap maps (default: 50)'
  id: f
  inputBinding:
    prefix: -f
  type: long
