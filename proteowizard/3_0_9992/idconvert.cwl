#!/usr/bin/env cwl-runner

baseCommand:
- idconvert
class: CommandLineTool
cwlVersion: v1.0
id: idconvert
inputs:
- doc: ''
  id: file_masks
  inputBinding:
    position: 0
  type: File
- doc: '[ --filelist ] arg    : specify text file containing filenames'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: "[ --outdir ] arg (=.) : set output directory ('-' for stdout) [.]"
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '[ --config ] arg      : configuration file (optionName=value)'
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: '[ --ext ] arg         : set extension for output files [mzid|pepXML|txt]'
  id: e
  inputBinding:
    prefix: -e
  type: boolean
- doc: ': write mzIdentML format [default]'
  id: mz_ident_ml
  inputBinding:
    prefix: --mzIdentML
  type: boolean
- doc: ': write pepXML format'
  id: pep_xml
  inputBinding:
    prefix: --pepXML
  type: boolean
- doc: ': write hierarchical text format'
  id: text
  inputBinding:
    prefix: --text
  type: boolean
- doc: '[ --verbose ]         : display detailed progress information'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
