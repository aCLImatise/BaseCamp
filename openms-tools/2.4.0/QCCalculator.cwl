#!/usr/bin/env cwl-runner

baseCommand:
- QCCalculator
class: CommandLineTool
cwlVersion: v1.0
id: qccalculator
inputs:
- doc: "*                  Raw data input file (this is relevant if you want to look\
    \ at MS1, MS2 and precursor peak information) (valid formats: 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                 Your qcML file. (valid formats: 'qcML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Input idXML file containing the identifications. Your identifications will\
    \ be exported in an easy-to-read format (valid formats: 'idXML')"
  id: id
  inputBinding:
    prefix: -id
  type: File
- doc: "Feature input file (this is relevant for most QC issues) (valid formats: 'featureXML')"
  id: feature
  inputBinding:
    prefix: -feature
  type: File
- doc: "Consensus input file (this is only used for charge state deconvoluted output.\
    \ Use the consensusXML output form the DeCharger) (valid formats: 'consensusXML')"
  id: consensus
  inputBinding:
    prefix: -consensus
  type: File
- doc: This flag should be set, if you work with a set of merged features.
  id: remove_duplicate_features
  inputBinding:
    prefix: -remove_duplicate_features
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
