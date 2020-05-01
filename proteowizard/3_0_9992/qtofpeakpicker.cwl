#!/usr/bin/env cwl-runner

baseCommand:
- qtofpeakpicker
class: CommandLineTool
cwlVersion: v1.0
id: qtofpeakpicker
inputs:
- doc: '[ --help ]               produce help message'
  id: h
  inputBinding:
    prefix: -H
  type: boolean
- doc: '[ --version ]            produces version information'
  id: v
  inputBinding:
    prefix: -V
  type: boolean
- doc: '[ --in ] arg             input file'
  id: i
  inputBinding:
    prefix: -I
  type: boolean
- doc: '[ --out ] arg            output file'
  id: o
  inputBinding:
    prefix: -O
  type: boolean
- doc: '[ --config-file ] arg    configuration file'
  id: c
  inputBinding:
    prefix: -C
  type: boolean
- doc: (=20000)   instrument resolution.
  id: resolution
  inputBinding:
    prefix: --resolution
  type: string
- doc: (=1)             default area, otherwise store intensity (0).
  id: area
  inputBinding:
    prefix: --area
  type: string
- doc: (=10)       removes peaks less than threshold times smallest  intensity in
    spectrum
  id: threshold
  inputBinding:
    prefix: --threshold
  type: string
- doc: (=0)    maximum number of peaks per spectrum (0 = no  limit)
  id: number_of_peaks
  inputBinding:
    prefix: --numberofpeaks
  type: string
- doc: '[ --widthint ] arg (=2)  peak apex +- integration width'
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: (=1)      smoothing width
  id: smooth_width
  inputBinding:
    prefix: --smoothwidth
  type: string
