#!/usr/bin/env cwl-runner

baseCommand:
- OpenSwathFeatureXMLToTSV
class: CommandLineTool
cwlVersion: v1.0
id: openswathfeaturexmltotsv
inputs:
- doc: "*                     Input files separated by blank (valid formats: 'featureXML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                      TraML transition file (valid formats: 'traML')"
  id: tr
  inputBinding:
    prefix: -tr
  type: File
- doc: "*                     Tsv output file (mProphet compatible) (valid formats:\
    \ 'csv')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: Whether to write short (one peptide per line) or long format (one transition
    per line).
  id: short_format
  inputBinding:
    prefix: -short_format
  type: boolean
- doc: If only the best scoring feature per peptide should be printed, give the variable
    name
  id: best_scoring_peptide
  inputBinding:
    prefix: -best_scoring_peptide
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
