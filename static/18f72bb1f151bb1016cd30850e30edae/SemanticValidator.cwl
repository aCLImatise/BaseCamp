class: CommandLineTool
id: SemanticValidator.cwl
inputs:
- id: in_in
  doc: "*            Input file (any xml file) (valid formats: 'analysisXML', 'mzML',\
    \ 'TraML', 'mzid', 'mzData', 'xml')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_mapping_file
  doc: "*  Mapping file which is used to semantically validate the given XML file\
    \ against this mapping file (see 'share/OpenMS/MAPPING' for templates). (valid\
    \ formats: 'xml')"
  type: File?
  inputBinding:
    prefix: -mapping_file
- id: in_cv
  doc: "Controlled Vocabulary files containg the CV terms (if left empty, a set of\
    \ default files are used) (valid formats: 'obo')"
  type: string?
  inputBinding:
    prefix: -cv
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
hints: []
cwlVersion: v1.1
baseCommand:
- SemanticValidator
