class: CommandLineTool
id: SemanticValidator.cwl
inputs:
- id: in
  doc: "*            Input file (any xml file) (valid formats: 'analysisXML', 'mzML',\
    \ 'TraML', 'mzid', 'mzData', 'xml')"
  type: File
  inputBinding:
    prefix: -in
- id: mapping_file
  doc: "*  Mapping file which is used to semantically validate the given XML file\
    \ against this mapping file (see 'share/OpenMS/MAPPING' for templates). (valid\
    \ formats: 'xml')"
  type: File
  inputBinding:
    prefix: -mapping_file
- id: cv
  doc: "Controlled Vocabulary files containg the CV terms (if left empty, a set of\
    \ default files are used) (valid formats: 'obo')"
  type: File
  inputBinding:
    prefix: -cv
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
- SemanticValidator
