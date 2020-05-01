#!/usr/bin/env cwl-runner

baseCommand:
- MetaboliteAdductDecharger
class: CommandLineTool
cwlVersion: v1.0
id: metaboliteadductdecharger
inputs:
- doc: "*        Input file  (valid formats: 'featureXML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*    Output consensus map (valid formats: 'consensusXML')"
  id: out_cm
  inputBinding:
    prefix: -out_cm
  type: File
- doc: "Output feature map (valid formats: 'featureXML')"
  id: out_fm
  inputBinding:
    prefix: -out_fm
  type: File
- doc: "Output file (valid formats: 'consensusXML')"
  id: out_pairs
  inputBinding:
    prefix: -outpairs
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
- doc: Feature decharging algorithm section
  id: algorithm
  inputBinding:
    prefix: '- algorithm'
  type: boolean
