#!/usr/bin/env cwl-runner

baseCommand:
- OpenSwathRewriteToFeatureXML
class: CommandLineTool
cwlVersion: v1.0
id: openswathrewritetofeaturexml
inputs:
- doc: "MProphet tsv output file: \"all_peakgroups.xls\" (valid formats: 'csv')"
  id: csv
  inputBinding:
    prefix: -csv
  type: File
- doc: "*   Input featureXML file (valid formats: 'featureXML')"
  id: feature_xml
  inputBinding:
    prefix: -featureXML
  type: File
- doc: "*          Output featureXML file (valid formats: 'featureXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "FDR cutoff (e.g. to remove all features with a an m_score above 0.05 use 0.05\
    \ here) (default: '-1')"
  id: fdr_cut_off
  inputBinding:
    prefix: -FDR_cutoff
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
