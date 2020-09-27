class: CommandLineTool
id: LabeledEval.cwl
inputs:
- id: in_in
  doc: "*        Feature result file (valid formats: 'featureXML')"
  type: File
  inputBinding:
    prefix: -in
- id: in_truth
  doc: "*     Expected result file. (valid formats: 'consensusXML')"
  type: File
  inputBinding:
    prefix: -truth
- id: in_rt_to_l
  doc: "Maximum allowed retention time deviation (default: '20')"
  type: long
  inputBinding:
    prefix: -rt_tol
- id: in_mz_to_l
  doc: "Maximum allowed m/z deviation (divided by charge) (default: '0.25')"
  type: double
  inputBinding:
    prefix: -mz_tol
- id: in_ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- LabeledEval
