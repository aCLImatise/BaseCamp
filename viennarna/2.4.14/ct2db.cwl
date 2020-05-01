#!/usr/bin/env cwl-runner

baseCommand:
- ct2db
class: CommandLineTool
cwlVersion: v1.0
id: ct2db
inputs:
- doc: Remove pseudoknots from structure (default=off)
  id: remove_pk
  inputBinding:
    prefix: --removePK
  type: boolean
- doc: Substitute all nucleotides with their RNA alphabet counter parts, i.e. convert
    to characters A, C, G, U or N for unknown bases. (default=off)
  id: convert_to_rna
  inputBinding:
    prefix: --convertToRNA
  type: boolean
- doc: Be verbose (default=off)
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
