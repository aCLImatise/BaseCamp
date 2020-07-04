class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/msstitch_storespectra.cwl
inputs:
- id: dbfile
  doc: Database lookup file
  type: string
  inputBinding:
    prefix: --dbfile
- id: output_file
  doc: Output file
  type: string
  inputBinding:
    prefix: -o
- id: spectra
  doc: Spectra files in mzML format. Multiple files can be specified, if order is
    important, e.g. when matching them with quant data, the order will be their input
    order at the command line.
  type: string[]
  inputBinding:
    prefix: --spectra
- id: set_names
  doc: Names of biological sets. Can be specified with quotation marks if spaces are
    used
  type: string[]
  inputBinding:
    prefix: --setnames
outputs: []
cwlVersion: v1.1
baseCommand:
- msstitch
- storespectra
