#!/usr/bin/env cwl-runner

baseCommand:
- trainGlimmerHMM
class: CommandLineTool
cwlVersion: v1.0
id: trainglimmerhmm
inputs:
- doc: ',i2,...,in  isochores to be considered (e.g. if two isochores are desired
    between  0-40% GC content and 40-100% then the option should be: -i 0,40,100;  default
    is -i 0,100 )'
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: name = name of training directory
  id: d
  inputBinding:
    prefix: -d
  type: string
- doc: val = average value of upstream UTR region if known
  id: f
  inputBinding:
    prefix: -f
  type: string
- doc: 'val = average value of downstream UTR region if known                '
  id: l
  inputBinding:
    prefix: -l
  type: string
- doc: val = average value of intergenic region if known
  id: n
  inputBinding:
    prefix: -n
  type: string
- doc: val = value of flanking region around genes (default=200)
  id: v
  inputBinding:
    prefix: -v
  type: string
- doc: val = build 1st or 2nd order markov model (default=1)
  id: b
  inputBinding:
    prefix: -b
  type: string
- doc: val = 1 when constructing decision trees from false.* files (default=0)
  id: t
  inputBinding:
    prefix: -t
  type: string
