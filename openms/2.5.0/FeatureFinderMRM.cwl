#!/usr/bin/env cwl-runner

baseCommand:
- FeatureFinderMRM
class: CommandLineTool
cwlVersion: v1.0
id: featurefindermrm
inputs:
- doc: "*        Input file (valid formats: 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*       Output file (valid formats: 'featureXML')"
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
- doc: Algorithm section
  id: algorithm
  inputBinding:
    prefix: '- algorithm'
  type: boolean
- doc: ://www.openms.de/documentation/TOPP_FeatureFinderMRM.html
  id: http
  inputBinding:
    prefix: '- http'
  type: boolean
