#!/usr/bin/env cwl-runner

baseCommand:
- DeMeanderize
class: CommandLineTool
cwlVersion: v1.0
id: demeanderize
inputs:
- doc: "*              Input experiment file, containing the wrongly sorted spectra.\
    \ (valid formats: 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: string
- doc: "*             Output experiment file with correctly sorted spectra. (valid\
    \ formats: 'mzML')"
  id: out
  inputBinding:
    prefix: -out
  type: string
- doc: "Number of spots in one column, until next row is spotted. (default: '48' min:\
    \ '1')"
  id: num_spots_per_row
  inputBinding:
    prefix: -num_spots_per_row
  type: long
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
