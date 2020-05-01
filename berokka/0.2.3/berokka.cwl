#!/usr/bin/env cwl-runner

baseCommand:
- berokka
class: CommandLineTool
cwlVersion: v1.0
id: berokka
inputs:
- doc: Debug info.
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: Check dependencies and exit.
  id: check
  inputBinding:
    prefix: --check
  type: boolean
- doc: Run a small test and exit.
  id: test
  inputBinding:
    prefix: --test
  type: boolean
- doc: Force overwite of existing.
  id: force
  inputBinding:
    prefix: --force
  type: boolean
- doc: '[X]    Output folder [].'
  id: outdir
  inputBinding:
    prefix: --outdir
  type: boolean
- doc: '[N]   Approximate max read length [60000].'
  id: read_len
  inputBinding:
    prefix: --readlen
  type: boolean
- doc: '[N]      Accept local alignment within --fuzz bp of global [5].'
  id: fuzz
  inputBinding:
    prefix: --fuzz
  type: boolean
- doc: Keep intermediate files.
  id: keep_files
  inputBinding:
    prefix: --keepfiles
  type: boolean
- doc: Don't annotate FASTA with circular=true.
  id: no_an_no
  inputBinding:
    prefix: --noanno
  type: boolean
- doc: '[X]    Contaminants to remove [/tmp/tmpxq3y3_fe/db/controls.fna].'
  id: filter
  inputBinding:
    prefix: --filter
  type: boolean
