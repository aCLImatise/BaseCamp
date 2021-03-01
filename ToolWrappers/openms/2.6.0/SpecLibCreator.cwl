class: CommandLineTool
id: SpecLibCreator.cwl
inputs:
- id: in_info
  doc: "*          Holds id, peptide, retention time etc. (valid formats: 'csv')"
  type: File?
  inputBinding:
    prefix: -info
- id: in_item_seperator
  doc: "Separator between items. e.g. , (default: ',')"
  type: string?
  inputBinding:
    prefix: -itemseperator
- id: in_item_enclosed
  doc: "'true' or 'false' if true every item is enclosed e.g. '$peptide$,$run$...\
    \ (default: 'false' valid: 'true', 'false')"
  type: boolean?
  inputBinding:
    prefix: -itemenclosed
- id: in_spec
  doc: "*          Spectra (valid formats: 'mzData', 'mzXML')"
  type: File?
  inputBinding:
    prefix: -spec
- id: in_out
  doc: "*           Output MSP formatted spectra library (valid formats: 'msp')"
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
- SpecLibCreator
