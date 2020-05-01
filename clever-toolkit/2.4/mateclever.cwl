#!/usr/bin/env cwl-runner

baseCommand:
- mateclever
class: CommandLineTool
cwlVersion: v1.0
id: mateclever
inputs:
- doc: Threads.
  id: t
  inputBinding:
    prefix: -T
  type: string
- doc: 'Maximum deletion length to look for (default: 10000).'
  id: m
  inputBinding:
    prefix: -M
  type: long
- doc: Delete old result and working directory first (if present).
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: 'Working directory (default: <result-directory>/work).'
  id: w
  inputBinding:
    prefix: -w
  type: string
- doc: 'Keep working directory (default: delete directory when finished).'
  id: k
  inputBinding:
    prefix: -k
  type: boolean
- doc: 'Minimum expected support for a SNP in order to ignore mismatches at that position
    (default: 3.0).'
  id: w
  inputBinding:
    prefix: -W
  type: string
- doc: 'Maximum center distance between split-read and read- pair deletion to be considered
    identical (default: 100).'
  id: o
  inputBinding:
    prefix: -o
  type: long
- doc: 'Maximum length difference between split-read and read- pair deletion to be
    considered identical (default: 20).'
  id: z
  inputBinding:
    prefix: -z
  type: long
