#!/usr/bin/env cwl-runner

baseCommand:
- ssu-esl-sfetch
class: CommandLineTool
cwlVersion: v1.0
id: ssu-esl-sfetch
inputs:
- doc: ': output sequences to file <f> instead of stdout'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ': output sequence to file named <key>'
  id: o
  inputBinding:
    prefix: -O
  type: boolean
- doc: ': rename the sequence <s>'
  id: n
  inputBinding:
    prefix: -n
  type: string
- doc: ': reverse complement the seq(s)'
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: ': specify that input file is in format <s>'
  id: in_format
  inputBinding:
    prefix: --informat
  type: string
- doc: ': <namefile> in <f> is Infernal cmsearch tab file'
  id: tab_file
  inputBinding:
    prefix: --tabfile
  type: boolean
- doc: ': w/--tabfile, do not add bit score, E value, GC to name'
  id: short_name
  inputBinding:
    prefix: --shortname
  type: boolean
- doc: ': w/--tabfile, only fetch sequences with bit scores above <x>'
  id: tm_in
  inputBinding:
    prefix: --Tmin
  type: string
- doc: ': w/--tabfile, only fetch sequences with E-values below <x>  (x>0.)'
  id: emax
  inputBinding:
    prefix: --Emax
  type: string
