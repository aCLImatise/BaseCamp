#!/usr/bin/env cwl-runner

baseCommand:
- EICExtractor
class: CommandLineTool
cwlVersion: v1.0
id: eicextractor
inputs:
- doc: "*        Input raw data file (valid formats: 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "[for Waters data only] Read additional information from _HEADER.TXT. Provide\
    \ one for each raw input file. (valid formats: 'txt')"
  id: in_header
  inputBinding:
    prefix: -in_header
  type: File
- doc: "*       Input config file stating where to find signal (valid formats: 'edta')"
  id: pos
  inputBinding:
    prefix: -pos
  type: File
- doc: "RT tolerance in [s] for finding max peak (whole RT range around RT middle)\
    \ (default: '3')"
  id: rt_to_l
  inputBinding:
    prefix: -rt_tol
  type: boolean
- doc: "M/z tolerance in [ppm] for finding a peak (default: '10')"
  id: mz_to_l
  inputBinding:
    prefix: -mz_tol
  type: boolean
- doc: "# of scans up & down in RT from highest point for ppm estimation in result\
    \ (default: '1')"
  id: rt_collect
  inputBinding:
    prefix: -rt_collect
  type: boolean
- doc: :enabled   Automatically detect injection peaks from TIC and quantify all m/z
    x RT combinations.
  id: auto_rt
  inputBinding:
    prefix: -auto_rt
  type: boolean
- doc: "*       Output quantitation file (multiple columns for each input compound)\
    \ (valid formats: 'csv')"
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
