class: CommandLineTool
id: CVInspector.cwl
inputs:
- id: cv_files
  doc: "*    List of ontology files in OBO format. (valid formats: 'obo')"
  type: File
  inputBinding:
    prefix: -cv_files
- id: cv_names
  doc: '*    List of identifiers (one for each ontology file).'
  type: string
  inputBinding:
    prefix: -cv_names
- id: mapping_file
  doc: "Mapping file in CVMapping (XML) format. (valid formats: 'XML')"
  type: File
  inputBinding:
    prefix: -mapping_file
- id: ignore_cv
  doc: "A list of CV identifiers which should be ignored. (default: '[UO PATO BTO]')"
  type: string
  inputBinding:
    prefix: -ignore_cv
- id: html
  doc: "Writes an HTML version of the mapping file with annotated CV terms (valid\
    \ formats: 'HTML')"
  type: File
  inputBinding:
    prefix: -html
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
- CVInspector
