#!/usr/bin/env cwl-runner

baseCommand:
- findMatchesBetweenKUnitigsAndReads
class: CommandLineTool
cwlVersion: v1.0
id: findmatchesbetweenkunitigsandreads
inputs:
- doc: Long output format (false)
  id: long
  inputBinding:
    prefix: --long
  type: boolean
- doc: Output file (kunitigs_reads_matches)
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: '*Length of mer'
  id: mer
  inputBinding:
    prefix: --mer
  type: string
- doc: Gzip output (false)
  id: gzip
  inputBinding:
    prefix: --gzip
  type: boolean
- doc: Number of threads (1)
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: Be verbose (false)
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
