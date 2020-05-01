#!/usr/bin/env cwl-runner

baseCommand:
- hilive-build
class: CommandLineTool
cwlVersion: v1.0
id: hilive-build
inputs:
- doc: '[ --license ]         Print licensing information and exit'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: '[ --input ] arg       Reference genome(s) in (multi-)FASTA format.  [REQUIRED]'
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: '[ --out-prefix ] arg  Output file prefix. Several files with the same  prefix
    will be created. [REQUIRED]'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: 'Do not convert all spaces in reference ids to  underscores [Default: converting
    is on]'
  id: do_not_convert_spaces
  inputBinding:
    prefix: --do-not-convert-spaces
  type: boolean
- doc: 'Trim all reference ids after first space [Default:  false]'
  id: trim_after_space
  inputBinding:
    prefix: --trim-after-space
  type: boolean
