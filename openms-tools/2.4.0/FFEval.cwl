#!/usr/bin/env cwl-runner

baseCommand:
- FFEval
class: CommandLineTool
cwlVersion: v1.0
id: ffeval
inputs:
- doc: "*            Feature input file, which contains the data to be tested against\
    \ the truth file. (valid formats: 'featureXML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*         Truth feature file that defines what features should be found. (valid\
    \ formats: 'featureXML')"
  id: truth
  inputBinding:
    prefix: -truth
  type: File
- doc: "Allowed tolerance of RT relative to average feature RT span. (default: '0.3'\
    \ min: '0')"
  id: rt_to_l
  inputBinding:
    prefix: -rt_tol
  type: string
- doc: "Allowed absolute tolerance of RT (overwrites 'rt_tol' if set above zero).\
    \ (default: '-1' min: '-1')"
  id: rt_to_l_abs
  inputBinding:
    prefix: -rt_tol_abs
  type: string
- doc: "Allowed tolerance in m/z (is divided by charge). (default: '0.25' min: '0')"
  id: mz_to_l
  inputBinding:
    prefix: -mz_tol
  type: string
- doc: "Feature output file. If given, an annotated input file is written. (valid\
    \ formats: 'featureXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Feature file containing seeds with abort reasons. (valid formats: 'featureXML')"
  id: abort_reasons
  inputBinding:
    prefix: -abort_reasons
  type: File
- doc: "If given, a ROC curve file is created (ROC points based on intensity threshold)\
    \ (valid formats: 'csv')"
  id: out_roc
  inputBinding:
    prefix: -out_roc
  type: File
- doc: Use the given TOPP INI file
  id: ini
  inputBinding:
    prefix: -ini
  type: File
- doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  id: threads
  inputBinding:
    prefix: -threads
  type: string
- doc: Writes the default configuration file
  id: write_ini
  inputBinding:
    prefix: -write_ini
  type: File
- doc: Shows all options (including advanced)
  id: helphelp
  inputBinding:
    prefix: --helphelp
  type: boolean
