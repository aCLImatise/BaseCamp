class: CommandLineTool
id: FileConverter.cwl
inputs:
- id: in
  doc: "*        Input file to convert. (valid formats: 'mzML', 'mzXML', 'mgf', 'raw',\
    \ 'cachedMzML', 'mzData', 'dta', 'dta2d', 'featureXML', 'consensusXML', 'ms2',\
    \ 'fid', 'tsv', 'peplist', 'kroenik', 'edta' )"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*       Output file (valid formats: 'mzML', 'mzXML', 'cachedMzML', 'mgf',\
    \ 'featureXML', 'consensusXML', 'edta', 'mzData', 'dta2d', 'csv')"
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
- FileConverter
