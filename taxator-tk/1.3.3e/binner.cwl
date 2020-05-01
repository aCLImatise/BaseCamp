#!/usr/bin/env cwl-runner

baseCommand:
- binner
class: CommandLineTool
cwlVersion: v1.0
id: binner
inputs:
- doc: show citation info
  id: citation
  inputBinding:
    prefix: --citation
  type: boolean
- doc: show advanced program options
  id: advanced_options
  inputBinding:
    prefix: --advanced-options
  type: boolean
- doc: '[ --sample-identifier ] arg        unique sample identifier'
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: '[ --sequence-min-support ] arg (=50) minimum number of positions supporting  a
    taxonomic signal for any single  sequence. If not reached, a fall-back  on a more
    robust algorthm will be used'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: '[ --signal-majority ] arg (=0.699999988) minimum combined fraction of support  for
    any single sequence (> 0.5 to be  stable)'
  id: j
  inputBinding:
    prefix: -j
  type: boolean
- doc: '[ --identity-constrain ] arg       minimum required identity for this rank
    (e.g. -i species:0.8 -i genus:0.7)'
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: '[ --files ] arg                    arbitrary number of prediction files  (replaces
    standard input, use "-" to  specify a combination of both)'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: '[ --logfile ] arg (=binning.log)   specify name of file for logging  (appending
    lines)'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
