#!/usr/bin/env cwl-runner

baseCommand:
- PrecursorMassCorrector
class: CommandLineTool
cwlVersion: v1.0
id: precursormasscorrector
inputs:
- doc: "*                            Input mzML file containing the spectra. (valid\
    \ formats: 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                           Output mzML file. (valid formats: 'mzML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Input featureXML file, containing features; if set, the MS/MS spectra precursor\
    \ entries  will be matched to the feature m/z values if possible. (valid formats:\
    \ 'featureXML')"
  id: feature_in
  inputBinding:
    prefix: -feature_in
  type: File
- doc: "Maximal deviation in Th which is acceptable to be corrected; this value should\
    \ be set to the instruments selection window. (default: '1.5' min: '0')"
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
