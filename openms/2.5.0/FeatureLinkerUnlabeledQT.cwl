#!/usr/bin/env cwl-runner

baseCommand:
- FeatureLinkerUnlabeledQT
class: CommandLineTool
cwlVersion: v1.0
id: featurelinkerunlabeledqt
inputs:
- doc: "*        Input files separated by blanks (valid formats: 'featureXML', 'consensusXML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*        Output file (valid formats: 'consensusXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Input file containing the experimental design (valid formats: 'tsv')"
  id: design
  inputBinding:
    prefix: -design
  type: File
- doc: 'For consensusXML input only: If set, the sub-features of the inputs are transferred
    to the output.'
  id: keep_subelements
  inputBinding:
    prefix: -keep_subelements
  type: boolean
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
- doc: Algorithm parameters section
  id: algorithm
  inputBinding:
    prefix: '- algorithm'
  type: boolean
- doc: ://www.openms.de/documentation/TOPP_FeatureLinkerUnlabeledQT.html
  id: http
  inputBinding:
    prefix: '- http'
  type: boolean
