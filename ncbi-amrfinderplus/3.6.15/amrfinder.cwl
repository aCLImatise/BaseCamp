#!/usr/bin/env cwl-runner

baseCommand:
- amrfinder
class: CommandLineTool
cwlVersion: v1.0
id: amrfinder
inputs:
- doc: ''
  id: update
  inputBinding:
    prefix: --update
  type: boolean
- doc: ''
  id: protein
  inputBinding:
    prefix: --protein
  type: string
- doc: ''
  id: nucleotide
  inputBinding:
    prefix: --nucleotide
  type: string
- doc: ''
  id: gff
  inputBinding:
    prefix: --gff
  type: string
- doc: ''
  id: p_gap
  inputBinding:
    prefix: --pgap
  type: boolean
- doc: ''
  id: database
  inputBinding:
    prefix: --database
  type: string
- doc: ''
  id: ident_min
  inputBinding:
    prefix: --ident_min
  type: long
- doc: ''
  id: coverage_min
  inputBinding:
    prefix: --coverage_min
  type: long
- doc: ''
  id: organism
  inputBinding:
    prefix: --organism
  type: string
- doc: ''
  id: list_organisms
  inputBinding:
    prefix: --list_organisms
  type: boolean
- doc: ''
  id: translation_table
  inputBinding:
    prefix: --translation_table
  type: string
- doc: ''
  id: plus
  inputBinding:
    prefix: --plus
  type: boolean
- doc: ''
  id: report_common
  inputBinding:
    prefix: --report_common
  type: boolean
- doc: ''
  id: mutation_all
  inputBinding:
    prefix: --mutation_all
  type: string
- doc: ''
  id: blast_bin
  inputBinding:
    prefix: --blast_bin
  type: string
- doc: ''
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: ''
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: ''
  id: g_pipe_org
  inputBinding:
    prefix: --gpipe_org
  type: boolean
- doc: ''
  id: parm
  inputBinding:
    prefix: --parm
  type: string
- doc: ''
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: ''
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: ''
  id: log
  inputBinding:
    prefix: --log
  type: string
