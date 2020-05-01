#!/usr/bin/env cwl-runner

baseCommand:
- SemanticValidator
class: CommandLineTool
cwlVersion: v1.0
id: semanticvalidator
inputs:
- doc: "*            Input file (any xml file) (valid formats: 'analysisXML', 'mzML',\
    \ 'TraML', 'mzid', 'mzData', 'xml')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*  Mapping file which is used to semantically validate the given XML file\
    \ against this mapping file (see 'share/OpenMS/MAPPING' for templates). (valid\
    \ formats: 'xml')"
  id: mapping_file
  inputBinding:
    prefix: -mapping_file
  type: File
- doc: "Controlled Vocabulary files containg the CV terms (if left empty, a set of\
    \ default files are used) (valid formats: 'obo')"
  id: cv
  inputBinding:
    prefix: -cv
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
