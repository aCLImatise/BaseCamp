class: CommandLineTool
id: IsobaricAnalyzer.cwl
inputs:
- id: type
  doc: "Isobaric Quantitation method used in the experiment. (default: 'itraq4plex'\
    \ valid: 'itraq4plex', 'itraq8plex', 'tmt10plex', 'tmt11plex', 'tmt6plex')"
  type: string
  inputBinding:
    prefix: -type
- id: in
  doc: "*        Input raw/picked data file  (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*       Output consensusXML file with quantitative information (valid formats:\
    \ 'consensusXML')"
  type: File
  inputBinding:
    prefix: -out
- id: ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: string
  inputBinding:
    prefix: -threads
- id: write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
- id: extraction
  doc: Parameters for the channel extraction.
  type: boolean
  inputBinding:
    prefix: '- extraction'
- id: itraq4plex
  doc: Algorithm parameters for iTRAQ 4-plex
  type: boolean
  inputBinding:
    prefix: '- itraq4plex'
- id: itraq8plex
  doc: Algorithm parameters for iTRAQ 8-plex
  type: boolean
  inputBinding:
    prefix: '- itraq8plex'
- id: quantification
  doc: Parameters for the peptide quantification.
  type: boolean
  inputBinding:
    prefix: '- quantification'
- id: tmt10plex
  doc: Algorithm parameters for TMT 10-plex
  type: boolean
  inputBinding:
    prefix: '- tmt10plex'
- id: tmt11plex
  doc: Algorithm parameters for TMT 11-plex
  type: boolean
  inputBinding:
    prefix: '- tmt11plex'
- id: tmt6plex
  doc: Algorithm parameters for TMT 6-plex
  type: boolean
  inputBinding:
    prefix: '- tmt6plex'
outputs: []
cwlVersion: v1.1
baseCommand:
- IsobaricAnalyzer
