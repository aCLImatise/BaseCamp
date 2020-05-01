#!/usr/bin/env cwl-runner

baseCommand:
- MetaboliteSpectralMatcher
class: CommandLineTool
cwlVersion: v1.0
id: metabolitespectralmatcher
inputs:
- doc: "*        Input spectra. (valid formats: 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*  Default spectral database. (valid formats: 'mzML')"
  id: database
  inputBinding:
    prefix: -database
  type: File
- doc: "*       MzTab file (valid formats: 'mzTab')"
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
- doc: Algorithm parameters section
  id: algorithm
  inputBinding:
    prefix: '- algorithm'
  type: boolean
- doc: ://www.openms.de/documentation/UTILS_MetaboliteSpectralMatcher.html
  id: http
  inputBinding:
    prefix: '- http'
  type: boolean
