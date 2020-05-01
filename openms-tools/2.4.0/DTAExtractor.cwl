#!/usr/bin/env cwl-runner

baseCommand:
- DTAExtractor
class: CommandLineTool
cwlVersion: v1.0
id: dtaextractor
inputs:
- doc: "*        Input file  (valid formats: 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: '*       Base name of DTA output files (RT, m/z and extension are appended)'
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "[min]:[max]    M/z range of precursor peaks to extract. This option is ignored\
    \ for MS level 1 (default: ':')"
  id: mz
  inputBinding:
    prefix: -mz
  type: boolean
- doc: "[min]:[max]    Retention time range of spectra to extract (default: ':')"
  id: rt
  inputBinding:
    prefix: -rt
  type: boolean
- doc: "...    MS levels to extract (default: '1,2,3')"
  id: level
  inputBinding:
    prefix: -level
  type:
  - string
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
