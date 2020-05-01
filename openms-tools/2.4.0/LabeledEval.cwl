#!/usr/bin/env cwl-runner

baseCommand:
- LabeledEval
class: CommandLineTool
cwlVersion: v1.0
id: labeledeval
inputs:
- doc: "*        Feature result file (valid formats: 'featureXML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*     Expected result file. (valid formats: 'consensusXML')"
  id: truth
  inputBinding:
    prefix: -truth
  type: File
- doc: "Maximum allowed retention time deviation (default: '20')"
  id: rt_to_l
  inputBinding:
    prefix: -rt_tol
  type: string
- doc: "Maximum allowed m/z deviation (divided by charge) (default: '0.25')"
  id: mz_to_l
  inputBinding:
    prefix: -mz_tol
  type: string
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
