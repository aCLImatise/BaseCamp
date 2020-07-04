class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/binner.cwl
inputs:
- id: citation
  doc: show citation info
  type: boolean
  inputBinding:
    prefix: --citation
- id: advanced_options
  doc: show advanced program options
  type: boolean
  inputBinding:
    prefix: --advanced-options
- id: arg_unique_sample
  doc: '[ --sample-identifier ] arg        unique sample identifier'
  type: boolean
  inputBinding:
    prefix: -n
- id: arg_minimum_number
  doc: '[ --sequence-min-support ] arg (=50) minimum number of positions supporting  a
    taxonomic signal for any single  sequence. If not reached, a fall-back  on a more
    robust algorthm will be used'
  type: boolean
  inputBinding:
    prefix: -s
- id: arg_minimum_combined
  doc: '[ --signal-majority ] arg (=0.699999988) minimum combined fraction of support  for
    any single sequence (> 0.5 to be  stable)'
  type: boolean
  inputBinding:
    prefix: -j
- id: arg_minimum_required
  doc: '[ --identity-constrain ] arg       minimum required identity for this rank
    (e.g. -i species:0.8 -i genus:0.7)'
  type: boolean
  inputBinding:
    prefix: -i
- id: arg_arbitrary_number
  doc: '[ --files ] arg                    arbitrary number of prediction files  (replaces
    standard input, use "-" to  specify a combination of both)'
  type: boolean
  inputBinding:
    prefix: -f
- id: arg_binninglog_specify
  doc: '[ --logfile ] arg (=binning.log)   specify name of file for logging  (appending
    lines)'
  type: boolean
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- binner
