#!/usr/bin/env cwl-runner

baseCommand:
- plaScope.sh
class: CommandLineTool
cwlVersion: v1.0
id: plascope.sh
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: arguments
  inputBinding:
    position: 1
  type: string
- doc: don't print beautiful banners
  id: no_banner
  inputBinding:
    prefix: --no-banner
  type: boolean
- doc: 'number of threads[OPTIONAL] [default : 8]'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: 'output directory [OPTIONAL] [default : current directory]'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: Sample name [MANDATORY]
  id: sample
  inputBinding:
    prefix: --sample
  type: boolean
- doc: path to centrifuge database [MANDATORY]
  id: db_dir
  inputBinding:
    prefix: --db_dir
  type: boolean
- doc: centrifuge database name [MANDATORY]
  id: db_name
  inputBinding:
    prefix: --db_name
  type: boolean
- doc: SPAdes assembly fasta file [MANDATORY]
  id: fast_a
  inputBinding:
    prefix: --fasta
  type: boolean
