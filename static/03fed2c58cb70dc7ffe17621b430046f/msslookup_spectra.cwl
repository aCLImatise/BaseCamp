class: CommandLineTool
id: msslookup_spectra.cwl
inputs:
- id: i
  doc: Multiple input files of {} format
  type: string[]
  inputBinding:
    prefix: -i
- id: dbfile
  doc: Database lookup file
  type: string
  inputBinding:
    prefix: --dbfile
- id: set_names
  doc: Names of biological sets. Can be specified with quotation marks if spaces are
    used
  type: string[]
  inputBinding:
    prefix: --setnames
outputs: []
cwlVersion: v1.1
baseCommand:
- msslookup
- spectra
