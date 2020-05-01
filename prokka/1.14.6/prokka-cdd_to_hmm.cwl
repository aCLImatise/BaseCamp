#!/usr/bin/env cwl-runner

baseCommand:
- prokka-cdd_to_hmm
class: CommandLineTool
cwlVersion: v1.0
id: prokka-cdd_to_hmm
inputs:
- doc: "!      Verbose output (default '0')."
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: CDD download dir (default '/bio/data/cdd/latest/').
  id: srcdir
  inputBinding:
    prefix: --srcdir
  type: string
- doc: Subset of CDD to create (default 'COG').
  id: lib
  inputBinding:
    prefix: --lib
  type: string
- doc: "!        Force overwrite of output files: LIB.aln LIB.hmm (default '0')."
  id: force
  inputBinding:
    prefix: --force
  type: boolean
