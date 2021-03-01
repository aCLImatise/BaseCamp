class: CommandLineTool
id: FileConverter.cwl
inputs:
- id: in_in
  doc: "*        Input file to convert. (valid formats: 'mzData', 'mzXML', 'mzML',\
    \ 'cachedMzML', 'dta', 'dta2d', 'mgf', 'featureXML', 'consensusXML', 'ms2', 'fid',\
    \ 'tsv', 'peplist', 'kroenik', 'edta')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*       Output file (valid formats: 'mzData', 'mzXML', 'mzML', 'cachedMzML',\
    \ 'dta2d', 'mgf', 'featureXML', 'consensusXML', 'edta', 'csv')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_ini
  doc: Use the given TOPP INI file
  type: File?
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long?
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File?
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean?
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "*       Output file (valid formats: 'mzData', 'mzXML', 'mzML', 'cachedMzML',\
    \ 'dta2d', 'mgf', 'featureXML', 'consensusXML', 'edta', 'csv')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- FileConverter
