class: CommandLineTool
id: binner.cwl
inputs:
- id: in_citation
  doc: show citation info
  type: boolean?
  inputBinding:
    prefix: --citation
- id: in_advanced_options
  doc: show advanced program options
  type: boolean?
  inputBinding:
    prefix: --advanced-options
- id: in_arg_sample_identifier
  doc: '[ --sample-identifier ] arg        unique sample identifier'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_arg_minimum_number
  doc: "[ --sequence-min-support ] arg (=50)\nminimum number of positions supporting\n\
    a taxonomic signal for any single\nsequence. If not reached, a fall-back\non a\
    \ more robust algorthm will be used"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_arg_combined_fraction
  doc: "[ --signal-majority ] arg (=0.699999988)\nminimum combined fraction of support\n\
    for any single sequence (> 0.5 to be\nstable)"
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_arg_minimum_required
  doc: "[ --identity-constrain ] arg       minimum required identity for this rank\n\
    (e.g. -i species:0.8 -i genus:0.7)"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_arg_arbitrary_number
  doc: "[ --files ] arg                    arbitrary number of prediction files\n\
    (replaces standard input, use \"-\" to\nspecify a combination of both)"
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_arg_binninglog_specify
  doc: "[ --logfile ] arg (=binning.log)   specify name of file for logging\n(appending\
    \ lines)\n"
  type: boolean?
  inputBinding:
    prefix: -l
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- binner
