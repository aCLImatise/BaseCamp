#!/usr/bin/env cwl-runner

baseCommand:
- IsobaricAnalyzer
class: CommandLineTool
cwlVersion: v1.0
id: isobaricanalyzer
inputs:
- doc: "Isobaric Quantitation method used in the experiment. (default: 'itraq4plex'\
    \ valid: 'itraq4plex', 'itraq8plex', 'tmt10plex', 'tmt11plex', 'tmt16plex', 'tmt6plex')"
  id: type
  inputBinding:
    prefix: -type
  type: string
- doc: "*        Input raw/picked data file  (valid formats: 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*       Output consensusXML file with quantitative information (valid formats:\
    \ 'consensusXML')"
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
- doc: Parameters for the channel extraction.
  id: extraction
  inputBinding:
    prefix: '- extraction'
  type: boolean
- doc: Algorithm parameters for iTRAQ 4-plex
  id: itraq4plex
  inputBinding:
    prefix: '- itraq4plex'
  type: boolean
- doc: Algorithm parameters for iTRAQ 8-plex
  id: itraq8plex
  inputBinding:
    prefix: '- itraq8plex'
  type: boolean
- doc: Parameters for the peptide quantification.
  id: quantification
  inputBinding:
    prefix: '- quantification'
  type: boolean
- doc: Algorithm parameters for TMT 10-plex
  id: tmt10plex
  inputBinding:
    prefix: '- tmt10plex'
  type: boolean
- doc: Algorithm parameters for TMT 11-plex
  id: tmt11plex
  inputBinding:
    prefix: '- tmt11plex'
  type: boolean
- doc: Algorithm parameters for TMT 16-plex
  id: tmt16plex
  inputBinding:
    prefix: '- tmt16plex'
  type: boolean
- doc: Algorithm parameters for TMT 6-plex
  id: tmt6plex
  inputBinding:
    prefix: '- tmt6plex'
  type: boolean
- doc: ://www.openms.de/documentation/TOPP_IsobaricAnalyzer.html
  id: http
  inputBinding:
    prefix: '- http'
  type: boolean
