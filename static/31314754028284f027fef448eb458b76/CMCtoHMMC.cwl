class: CommandLineTool
id: CMCtoHMMC.cwl
inputs:
- id: in_cm_compare_result_file
  doc: Path to CMCompare result file
  type: File?
  inputBinding:
    prefix: --cmcompareresultfile
- id: in_cm_models_file
  doc: Path to covariance model file
  type: File?
  inputBinding:
    prefix: --cmmodelsfile
- id: in_hmm_models_file
  doc: Path to hmm model file
  type: File?
  inputBinding:
    prefix: --hmmmodelsfile
- id: in_numeric_version
  doc: Print just the version number
  type: boolean?
  inputBinding:
    prefix: --numeric-version
- id: in_verbose
  doc: Loud verbosity
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: Quiet verbosity
  type: boolean?
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- CMCtoHMMC
