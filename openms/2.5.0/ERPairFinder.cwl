#!/usr/bin/env cwl-runner

baseCommand:
- ERPairFinder
class: CommandLineTool
cwlVersion: v1.0
id: erpairfinder
inputs:
- doc: "*                            Input mzML file containing the ER spectra. (valid\
    \ formats: 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                       Pair-file in the format: m/z-light m/z-heavy charge\
    \ rt (valid formats: 'txt')"
  id: pair_in
  inputBinding:
    prefix: -pair_in
  type: File
- doc: "*                           Output consensusXML file were the pairs of the\
    \ feature are written into. (valid formats: 'consensusXML')"
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
- doc: "Precursor mass tolerance which is used for the pair finding and the matching\
    \ of the given pair m/z values to the features. (default: '0.3' min: '0.0')"
  id: precursor_mass_tolerance
  inputBinding:
    prefix: -precursor_mass_tolerance
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
