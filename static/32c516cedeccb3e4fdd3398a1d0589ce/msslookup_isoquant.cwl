class: CommandLineTool
id: msslookup_isoquant.cwl
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
- id: spectra
  doc: Spectra files in mzML format. Multiple files can be specified, if order is
    important, e.g. when matching them with quant data, the order will be their input
    order at the command line.
  type: string[]
  inputBinding:
    prefix: --spectra
outputs: []
cwlVersion: v1.1
baseCommand:
- msslookup
- isoquant
