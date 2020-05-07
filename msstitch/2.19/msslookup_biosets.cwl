class: CommandLineTool
id: msslookup_biosets.cwl
inputs:
- id: i
  doc: Input file of mzML spectra format
  type: string
  inputBinding:
    prefix: -i
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
- biosets
