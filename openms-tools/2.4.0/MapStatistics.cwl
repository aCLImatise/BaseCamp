class: CommandLineTool
id: MapStatistics.cwl
inputs:
- id: in
  doc: "*        Input file (valid formats: 'featureXML', 'consensusXML')"
  type: File
  inputBinding:
    prefix: -in
- id: in_type
  doc: "Input file type -- default: determined from file extension or content (valid:\
    \ 'featureXML', 'consensusXML')"
  type: string
  inputBinding:
    prefix: -in_type
- id: out
  doc: "Optional output txt file. If empty, the output is written to the command line.\
    \ (valid formats: 'txt')"
  type: File
  inputBinding:
    prefix: -out
- id: n
  doc: "Report separate statistics for each of n RT slices of the map. (default: '4'\
    \ min: '1' max: '100')"
  type: string
  inputBinding:
    prefix: -n
- id: m
  doc: Show meta information about the whole experiment
  type: boolean
  inputBinding:
    prefix: -m
- id: p
  doc: Shows data processing information
  type: boolean
  inputBinding:
    prefix: -p
- id: s
  doc: Computes a summary statistics of intensities, qualities, and widths
  type: boolean
  inputBinding:
    prefix: -s
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
outputs: []
cwlVersion: v1.1
baseCommand:
- MapStatistics
