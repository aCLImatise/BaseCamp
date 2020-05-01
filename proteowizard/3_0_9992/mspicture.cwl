#!/usr/bin/env cwl-runner

baseCommand:
- mspicture
class: CommandLineTool
cwlVersion: v1.0
id: mspicture
inputs:
- doc: ''
  id: input_filenames
  inputBinding:
    position: 0
  type: string
- doc: '[ --outdir ] arg (=.) : output directory'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '[ --config ] arg      : configuration file (optionName=value) (ignored)'
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: '[ --label ] arg       : set filename label to xxx'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: ': set low m/z cutoff'
  id: mz_low
  inputBinding:
    prefix: --mzLow
  type: string
- doc: ': set high m/z cutoff'
  id: mz_high
  inputBinding:
    prefix: --mzHigh
  type: string
- doc: ': set scale of time axis'
  id: timescale
  inputBinding:
    prefix: --timeScale
  type: string
- doc: '[ --binCount ] arg    : set histogram bin count'
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: '[ --time ]            : render linearly to time'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: '[ --scan ]            : render linearly to scans'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: '[ --zRadius ] arg     : set intensity function z-score radius [=2]'
  id: z
  inputBinding:
    prefix: -z
  type: boolean
- doc: '[ --width ] arg       : set output bitmap width (default is calculated)'
  id: w
  inputBinding:
    prefix: -w
  type: boolean
- doc: ': use blue-red-yellow gradient'
  id: bry
  inputBinding:
    prefix: --bry
  type: boolean
- doc: ': use grey-scale gradient'
  id: grey
  inputBinding:
    prefix: --grey
  type: boolean
- doc: ': sum intensity in bins [default = max intensity]'
  id: bin_sum
  inputBinding:
    prefix: --binSum
  type: boolean
- doc: '[ --ms2locs ]         : indicate masses selected for ms2'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: ': shape of the pseudo2d gel markup  [circle(default)|square].'
  id: shape
  inputBinding:
    prefix: --shape
  type: string
- doc: '[ --pepxml ] arg      : pepxml file location'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: '[ --msi ] arg         : msInspect output file location'
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: '[ --flat ] arg        : peptide file location (nativeID rt mz score seq)'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: '[ --commands ] arg    : processes commands'
  id: x
  inputBinding:
    prefix: -x
  type: boolean
- doc: '[ --verbose ]         : prints extra information.'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
