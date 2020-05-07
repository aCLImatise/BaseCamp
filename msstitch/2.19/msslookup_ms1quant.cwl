class: CommandLineTool
id: msslookup_ms1quant.cwl
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
- id: quant_type
  doc: Filetype of precursor quants to store. One of kronik or openms.
  type: string
  inputBinding:
    prefix: --quanttype
- id: rt_to_l
  doc: Specifies tolerance in seconds for retention time when mapping MS1 feature
    quant info to identifications in the PSM table.
  type: string
  inputBinding:
    prefix: --rttol
- id: mz_to_l
  doc: Specifies tolerance in mass-to-charge when mapping MS1 feature quant info to
    identifications in the PSM table.
  type: string
  inputBinding:
    prefix: --mztol
- id: mz_to_ltype
  doc: Type of tolerance in mass-to-charge when mapping MS1 feature quant info to
    identifications in the PSM table. One of ppm, Da.
  type: string
  inputBinding:
    prefix: --mztoltype
outputs: []
cwlVersion: v1.1
baseCommand:
- msslookup
- ms1quant
