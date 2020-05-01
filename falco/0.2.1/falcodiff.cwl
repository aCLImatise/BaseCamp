#!/usr/bin/env cwl-runner

baseCommand:
- falcodiff
class: CommandLineTool
cwlVersion: v1.0
id: falcodiff
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: fast_qc_data_1txt
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: fast_qc_data_2txt
  inputBinding:
    position: 2
  type: string
- doc: 'Create all output files in the specified  output directory. If notprovided,
    files  will be created in the same directory as  the input file. '
  id: outdir
  inputBinding:
    prefix: --outdir
  type: boolean
- doc: 'Skip generating text file (Default = false) '
  id: skip_text
  inputBinding:
    prefix: --skip-text
  type: boolean
- doc: 'Skip generating HTML file (Default = false) '
  id: skip_html
  inputBinding:
    prefix: --skip-html
  type: boolean
- doc: 'Skip short summary(Default = false) '
  id: skip_short_summary
  inputBinding:
    prefix: --skip-short-summary
  type: boolean
- doc: 'print more run info '
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: 'print about message '
  id: about
  inputBinding:
    prefix: -about
  type: boolean
