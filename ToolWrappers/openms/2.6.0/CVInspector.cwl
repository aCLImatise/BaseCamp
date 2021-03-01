class: CommandLineTool
id: CVInspector.cwl
inputs:
- id: in_cv_files
  doc: "*    List of ontology files in OBO format. (valid formats: 'obo')"
  type: string?
  inputBinding:
    prefix: -cv_files
- id: in_cv_names
  doc: '*    List of identifiers (one for each ontology file).'
  type: File?
  inputBinding:
    prefix: -cv_names
- id: in_mapping_file
  doc: "Mapping file in CVMapping (XML) format. (valid formats: 'XML')"
  type: File?
  inputBinding:
    prefix: -mapping_file
- id: in_ignore_cv
  doc: "A list of CV identifiers which should be ignored. (default: '[UO PATO BTO]')"
  type: string?
  inputBinding:
    prefix: -ignore_cv
- id: in_html
  doc: "Writes an HTML version of the mapping file with annotated CV terms (valid\
    \ formats: 'HTML')"
  type: File?
  inputBinding:
    prefix: -html
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/openms:2.6.0--h4afb90d_0
cwlVersion: v1.1
baseCommand:
- CVInspector
