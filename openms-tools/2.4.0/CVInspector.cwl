#!/usr/bin/env cwl-runner

baseCommand:
- CVInspector
class: CommandLineTool
cwlVersion: v1.0
id: cvinspector
inputs:
- doc: "*    List of ontology files in OBO format. (valid formats: 'obo')"
  id: cv_files
  inputBinding:
    prefix: -cv_files
  type: File
- doc: '*    List of identifiers (one for each ontology file).'
  id: cv_names
  inputBinding:
    prefix: -cv_names
  type: string
- doc: "Mapping file in CVMapping (XML) format. (valid formats: 'XML')"
  id: mapping_file
  inputBinding:
    prefix: -mapping_file
  type: File
- doc: "A list of CV identifiers which should be ignored. (default: '[UO PATO BTO]')"
  id: ignore_cv
  inputBinding:
    prefix: -ignore_cv
  type: string
- doc: "Writes an HTML version of the mapping file with annotated CV terms (valid\
    \ formats: 'HTML')"
  id: html
  inputBinding:
    prefix: -html
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
