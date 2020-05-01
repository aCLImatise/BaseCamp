#!/usr/bin/env cwl-runner

baseCommand:
- aln2fa.pl
class: CommandLineTool
cwlVersion: v1.0
id: aln2fa.pl
inputs:
- doc: Full documentation
  id: man
  inputBinding:
    prefix: --man
  type: boolean
- doc: Verbose
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Remove gaps from sequences
  id: de_gap
  inputBinding:
    prefix: --degap
  type: boolean
