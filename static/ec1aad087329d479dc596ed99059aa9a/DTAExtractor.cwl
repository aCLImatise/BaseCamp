class: CommandLineTool
id: DTAExtractor.cwl
inputs:
- id: in
  doc: "*        Input file  (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: '*       Base name of DTA output files (RT, m/z and extension are appended)'
  type: File
  inputBinding:
    prefix: -out
- id: mz
  doc: "[min]:[max]    M/z range of precursor peaks to extract. This option is ignored\
    \ for MS level 1 (default: ':')"
  type: boolean
  inputBinding:
    prefix: -mz
- id: rt
  doc: "[min]:[max]    Retention time range of spectra to extract (default: ':')"
  type: boolean
  inputBinding:
    prefix: -rt
- id: level
  doc: "...    MS levels to extract (default: '1,2,3')"
  type:
  - string
  inputBinding:
    prefix: -level
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
- DTAExtractor
