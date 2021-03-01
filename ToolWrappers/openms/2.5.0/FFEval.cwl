class: CommandLineTool
id: FFEval.cwl
inputs:
- id: in_in
  doc: "*            Feature input file, which contains the data to be tested against\
    \ the truth file. (valid formats: 'featureXML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_truth
  doc: "*         Truth feature file that defines what features should be found. (valid\
    \ formats: 'featureXML')"
  type: File?
  inputBinding:
    prefix: -truth
- id: in_rt_to_l
  doc: "Allowed tolerance of RT relative to average feature RT span. (default: '0.3'\
    \ min: '0.0')"
  type: long?
  inputBinding:
    prefix: -rt_tol
- id: in_rt_to_l_abs
  doc: "Allowed absolute tolerance of RT (overwrites 'rt_tol' if set above zero).\
    \ (default: '-1.0' min: '-1.0')"
  type: long?
  inputBinding:
    prefix: -rt_tol_abs
- id: in_mz_to_l
  doc: "Allowed tolerance in m/z (is divided by charge). (default: '0.25' min: '0.0')"
  type: long?
  inputBinding:
    prefix: -mz_tol
- id: in_out
  doc: "Feature output file. If given, an annotated input file is written. (valid\
    \ formats: 'featureXML')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_abort_reasons
  doc: "Feature file containing seeds with abort reasons. (valid formats: 'featureXML')"
  type: File?
  inputBinding:
    prefix: -abort_reasons
- id: in_out_roc
  doc: "If given, a ROC curve file is created (ROC points based on intensity threshold)\
    \ (valid formats: 'csv')"
  type: File?
  inputBinding:
    prefix: -out_roc
- id: in_ini
  doc: Use the given TOPP INI file
  type: File?
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long?
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File?
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean?
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- FFEval
