#!/usr/bin/env cwl-runner

baseCommand:
- RNPxlXICFilter
class: CommandLineTool
cwlVersion: v1.0
id: rnpxlxicfilter
inputs:
- doc: "*    Input mzML file (valid formats: 'mzML')"
  id: control
  inputBinding:
    prefix: -control
  type: File
- doc: "*  Input mzML file (valid formats: 'mzML')"
  id: treatment
  inputBinding:
    prefix: -treatment
  type: File
- doc: "Fold change between XICs (default: '2.0')"
  id: fold_change
  inputBinding:
    prefix: -fold_change
  type: boolean
- doc: "RT tolerance in [s] for finding max peak (whole RT range around RT middle)\
    \ (default: '20.0')"
  id: rt_to_l
  inputBinding:
    prefix: -rt_tol
  type: boolean
- doc: "M/z tolerance in [ppm] for finding a peak (default: '10.0')"
  id: mz_to_l
  inputBinding:
    prefix: -mz_tol
  type: boolean
- doc: "*        Output of the treatment file after XIC filtering. (valid formats:\
    \ 'mzML')"
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
