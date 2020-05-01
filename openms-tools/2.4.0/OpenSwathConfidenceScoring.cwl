#!/usr/bin/env cwl-runner

baseCommand:
- OpenSwathConfidenceScoring
class: CommandLineTool
cwlVersion: v1.0
id: openswathconfidencescoring
inputs:
- doc: "*            Input file (OpenSwath results) (valid formats: 'featureXML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*           Assay library (valid formats: 'traML')"
  id: lib
  inputBinding:
    prefix: -lib
  type: File
- doc: "*           Output file (results with confidence scores) (valid formats: 'featureXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Retention time transformation (valid formats: 'trafoXML')"
  id: traf_o
  inputBinding:
    prefix: -trafo
  type: File
- doc: "Number of decoy assays to select from the library for every true assay (0\
    \ for \"all\") (default: '1000' min: '0')"
  id: decoys
  inputBinding:
    prefix: -decoys
  type: string
- doc: "Number of transitions per feature to consider (highest intensities first;\
    \ 0 for \"all\") (default: '6' min: '0')"
  id: transitions
  inputBinding:
    prefix: -transitions
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
