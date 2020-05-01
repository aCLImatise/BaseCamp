#!/usr/bin/env cwl-runner

baseCommand:
- QCShrinker
class: CommandLineTool
cwlVersion: v1.0
id: qcshrinker
inputs:
- doc: "*             Input qcml file (valid formats: 'qcML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: A list of cv accessions that should be removed. If empty, the usual suspects
    will be removed!
  id: qp_accessions
  inputBinding:
    prefix: -qp_accessions
  type: string
- doc: The name of the target run or set that contains the requested quality parameter.
  id: name
  inputBinding:
    prefix: -name
  type: string
- doc: "The file from which the name of the target run that contains the requested\
    \ quality parameter is taken. This overrides the name parameter! (valid formats:\
    \ 'mzML')"
  id: run
  inputBinding:
    prefix: -run
  type: File
- doc: "*            Output extended/reduced qcML file (valid formats: 'qcML')"
  id: out
  inputBinding:
    prefix: -out
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
