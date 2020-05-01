#!/usr/bin/env cwl-runner

baseCommand:
- QCMerger
class: CommandLineTool
cwlVersion: v1.0
id: qcmerger
inputs:
- doc: "*       List of qcml files to be merged. (valid formats: 'qcML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*       Output extended/reduced qcML file (valid formats: 'qcML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: Use only when all given qcml files belong to one set, which will be held under
    the given name.
  id: setname
  inputBinding:
    prefix: -setname
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
