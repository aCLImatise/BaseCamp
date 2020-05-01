#!/usr/bin/env cwl-runner

baseCommand:
- SpectraMerger
class: CommandLineTool
cwlVersion: v1.0
id: spectramerger
inputs:
- doc: "*               Input mzML file. (valid formats: 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*              Output mzML file with merged spectra. (valid formats: 'mzML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Method of merging which should be used. (default: 'average_gaussian' valid:\
    \ 'average_gaussian', 'average_tophat', 'precursor_method', 'block_method')"
  id: merging_method
  inputBinding:
    prefix: -merging_method
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
- doc: Algorithm section for merging spectra
  id: algorithm
  inputBinding:
    prefix: '- algorithm'
  type: boolean
