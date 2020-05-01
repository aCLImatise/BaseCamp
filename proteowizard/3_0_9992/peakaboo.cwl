#!/usr/bin/env cwl-runner

baseCommand:
- peakaboo
class: CommandLineTool
cwlVersion: v1.0
id: peakaboo
inputs:
- doc: '[ --filelist ] arg       : specify text file containing filenames'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: '[ --outdir ] arg (=.)    : set output directory'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '[ --ext ] arg (=.peaks)  : set extension for output files'
  id: e
  inputBinding:
    prefix: -e
  type: boolean
- doc: '(=1)        : set first scan'
  id: scan_begin
  inputBinding:
    prefix: --scanBegin
  type: string
- doc: '(=2147483647) : set last scan'
  id: scan_end
  inputBinding:
    prefix: --scanEnd
  type: string
- doc: '(=200)          : set mz low cutoff'
  id: mz_low
  inputBinding:
    prefix: --mzLow
  type: string
- doc: '(=2000)        : set mz high cutoff'
  id: mz_high
  inputBinding:
    prefix: --mzHigh
  type: string
