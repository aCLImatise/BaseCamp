#!/usr/bin/env cwl-runner

baseCommand:
- centrifuge-compress.pl
class: CommandLineTool
cwlVersion: v1.0
id: centrifuge-compress.pl
inputs:
- doc: ''
  id: perl
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: centrifuge_compress_pl
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: path_to_download_files
  inputBinding:
    position: 2
  type: File
- doc: ''
  id: path_to_tax_no_no_my
  inputBinding:
    position: 3
  type: File
- doc: ''
  id: '1'
  inputBinding:
    position: 4
  type: string
- doc: ''
  id: '50000000'
  inputBinding:
    position: 5
  type: string
- doc: ''
  id: map
  inputBinding:
    prefix: -map
  type: string
- doc: ''
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ''
  id: no_compress
  inputBinding:
    prefix: -noCompress
  type: boolean
- doc: ''
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: ''
  id: maxg
  inputBinding:
    prefix: -maxG
  type: boolean
- doc: ''
  id: no_dust_masker
  inputBinding:
    prefix: -noDustmasker
  type: boolean
