#!/usr/bin/env cwl-runner

baseCommand:
- MapStatistics
class: CommandLineTool
cwlVersion: v1.0
id: mapstatistics
inputs:
- doc: "*        Input file (valid formats: 'featureXML', 'consensusXML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Input file type -- default: determined from file extension or content (valid:\
    \ 'featureXML', 'consensusXML')"
  id: in_type
  inputBinding:
    prefix: -in_type
  type: string
- doc: "Optional output txt file. If empty, the output is written to the command line.\
    \ (valid formats: 'txt')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Report separate statistics for each of n RT slices of the map. (default: '4'\
    \ min: '1' max: '100')"
  id: n
  inputBinding:
    prefix: -n
  type: string
- doc: Show meta information about the whole experiment
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: Shows data processing information
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: Computes a summary statistics of intensities, qualities, and widths
  id: s
  inputBinding:
    prefix: -s
  type: boolean
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
