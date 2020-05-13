class: CommandLineTool
id: FFEval.cwl
inputs:
- id: in
  doc: "*            Feature input file, which contains the data to be tested against\
    \ the truth file. (valid formats: 'featureXML')"
  type: File
  inputBinding:
    prefix: -in
- id: truth
  doc: "*         Truth feature file that defines what features should be found. (valid\
    \ formats: 'featureXML')"
  type: File
  inputBinding:
    prefix: -truth
- id: rt_to_l
  doc: "Allowed tolerance of RT relative to average feature RT span. (default: '0.3'\
    \ min: '0')"
  type: string
  inputBinding:
    prefix: -rt_tol
- id: rt_to_l_abs
  doc: "Allowed absolute tolerance of RT (overwrites 'rt_tol' if set above zero).\
    \ (default: '-1' min: '-1')"
  type: string
  inputBinding:
    prefix: -rt_tol_abs
- id: mz_to_l
  doc: "Allowed tolerance in m/z (is divided by charge). (default: '0.25' min: '0')"
  type: string
  inputBinding:
    prefix: -mz_tol
- id: out
  doc: "Feature output file. If given, an annotated input file is written. (valid\
    \ formats: 'featureXML')"
  type: File
  inputBinding:
    prefix: -out
- id: abort_reasons
  doc: "Feature file containing seeds with abort reasons. (valid formats: 'featureXML')"
  type: File
  inputBinding:
    prefix: -abort_reasons
- id: out_roc
  doc: "If given, a ROC curve file is created (ROC points based on intensity threshold)\
    \ (valid formats: 'csv')"
  type: File
  inputBinding:
    prefix: -out_roc
- id: ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: string
  inputBinding:
    prefix: -threads
- id: write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs: []
cwlVersion: v1.1
baseCommand:
- FFEval
