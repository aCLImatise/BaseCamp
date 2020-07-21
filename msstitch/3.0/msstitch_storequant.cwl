class: CommandLineTool
id: ../../../msstitch_storequant.cwl
inputs:
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
- id: kron_ik
  doc: MS1 quant output files from Kronik in text format.Multiple files can be specified,
    and matching order with spectra files is important.
  type: string[]
  inputBinding:
    prefix: --kronik
- id: isobaric
  doc: Isobaric quant output files from OpenMS in consensusXML format. Multiple files
    can be specified, and matching order with spectra files is important.
  type: string[]
  inputBinding:
    prefix: --isobaric
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
- msstitch
- storequant
