#!/usr/bin/env cwl-runner

baseCommand:
- SpecLibCreator
class: CommandLineTool
cwlVersion: v1.0
id: speclibcreator
inputs:
- doc: "*          Holds id, peptide, retention time etc. (valid formats: 'csv')"
  id: info
  inputBinding:
    prefix: -info
  type: File
- doc: "Separator between items. e.g. , (default: ',')"
  id: item_seperator
  inputBinding:
    prefix: -itemseperator
  type: string
- doc: "'true' or 'false' if true every item is enclosed e.g. '$peptide$,$run$...\
    \ (default: 'false' valid: 'true', 'false')"
  id: item_enclosed
  inputBinding:
    prefix: -itemenclosed
  type: boolean
- doc: "*          Spectra (valid formats: 'mzData', 'mzXML')"
  id: spec
  inputBinding:
    prefix: -spec
  type: File
- doc: "*           Output MSP formatted spectra library (valid formats: 'msp')"
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
