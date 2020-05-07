class: CommandLineTool
id: SpecLibCreator.cwl
inputs:
- id: info
  doc: "*          Holds id, peptide, retention time etc. (valid formats: 'csv')"
  type: File
  inputBinding:
    prefix: -info
- id: item_seperator
  doc: "Separator between items. e.g. , (default: ',')"
  type: string
  inputBinding:
    prefix: -itemseperator
- id: item_enclosed
  doc: "'true' or 'false' if true every item is enclosed e.g. '$peptide$,$run$...\
    \ (default: 'false' valid: 'true', 'false')"
  type: boolean
  inputBinding:
    prefix: -itemenclosed
- id: spec
  doc: "*          Spectra (valid formats: 'mzData', 'mzXML')"
  type: File
  inputBinding:
    prefix: -spec
- id: out
  doc: "*           Output MSP formatted spectra library (valid formats: 'msp')"
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
outputs: []
cwlVersion: v1.1
baseCommand:
- SpecLibCreator
