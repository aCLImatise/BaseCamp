class: CommandLineTool
id: LabeledEval.cwl
inputs:
- id: in
  doc: "*        Feature result file (valid formats: 'featureXML')"
  type: File
  inputBinding:
    prefix: -in
- id: truth
  doc: "*     Expected result file. (valid formats: 'consensusXML')"
  type: File
  inputBinding:
    prefix: -truth
- id: rt_to_l
  doc: "Maximum allowed retention time deviation (default: '20')"
  type: string
  inputBinding:
    prefix: -rt_tol
- id: mz_to_l
  doc: "Maximum allowed m/z deviation (divided by charge) (default: '0.25')"
  type: string
  inputBinding:
    prefix: -mz_tol
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
- LabeledEval
