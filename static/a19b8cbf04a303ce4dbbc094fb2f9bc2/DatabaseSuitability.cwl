class: CommandLineTool
id: DatabaseSuitability.cwl
inputs:
- id: in_in_id
  doc: "*     Input idXML file from peptide search with combined database with added\
    \ de novo peptide. PeptideIndexer is needed, FDR is forbidden. (valid formats:\
    \ 'idXML')"
  type: File?
  inputBinding:
    prefix: -in_id
- id: in_in_spec
  doc: "*   Input MzML file used for the peptide identification (valid formats: 'mzML')"
  type: File?
  inputBinding:
    prefix: -in_spec
- id: in_in_novo
  doc: "*   Input idXML file containing de novo peptides (unfiltered) (valid formats:\
    \ 'idXML')"
  type: File?
  inputBinding:
    prefix: -in_novo
- id: in_out
  doc: "Optional tsv output containing database suitability information as well as\
    \ spectral quality. (valid formats: 'tsv')"
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/openms:2.6.0--h4afb90d_0
cwlVersion: v1.1
baseCommand:
- DatabaseSuitability
