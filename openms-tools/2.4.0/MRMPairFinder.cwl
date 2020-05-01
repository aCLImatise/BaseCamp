#!/usr/bin/env cwl-runner

baseCommand:
- MRMPairFinder
class: CommandLineTool
cwlVersion: v1.0
id: mrmpairfinder
inputs:
- doc: "*          Input featureXML file containing the features of the MRM experiment\
    \ spectra. (valid formats: 'featureXML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*     Pair-file in the format: prec-m/z-light prec-m/z-heavy frag-m/z-light\
    \ frag-m/z-heavy rt (valid formats: 'csv')"
  id: pair_in
  inputBinding:
    prefix: -pair_in
  type: File
- doc: "*         Output consensusXML file were the pairs of the features will be\
    \ written to. (valid formats: 'consensusXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Output featureXML file, only written if given, skipped otherwise. (valid formats:\
    \ 'featureXML')"
  id: feature_out
  inputBinding:
    prefix: -feature_out
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
