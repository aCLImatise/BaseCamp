#!/usr/bin/env cwl-runner

baseCommand:
- OpenSwathDIAPreScoring
class: CommandLineTool
cwlVersion: v1.0
id: openswathdiaprescoring
inputs:
- doc: "*                    Transition file (valid formats: 'TraML')"
  id: tr
  inputBinding:
    prefix: -tr
  type: File
- doc: "*                   Output file (valid formats: 'tsv')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Swath files that were used to extract the transitions. If present, SWATH specific\
    \ scoring will be applied. (valid formats: 'mzML')"
  id: swath_files
  inputBinding:
    prefix: -swath_files
  type: File
- doc: "Minimal distance to the edge to still consider a precursor, in Thomson (only\
    \ in SWATH) (default: '0.0')"
  id: min_upper_edge_dist
  inputBinding:
    prefix: -min_upper_edge_dist
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
