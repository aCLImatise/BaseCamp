class: CommandLineTool
id: msstitch_storequant.cwl
inputs:
- id: in_dbfile
  doc: Database lookup file
  type: File
  inputBinding:
    prefix: --dbfile
- id: in_spectra
  doc: "Spectra files in mzML format. Multiple files can be\nspecified, if order is\
    \ important, e.g. when matching\nthem with quant data, the order will be their\
    \ input\norder at the command line."
  type: string[]
  inputBinding:
    prefix: --spectra
- id: in_kron_ik
  doc: "MS1 quant output files from Kronik in text\nformat.Multiple files can be specified,\
    \ and matching\norder with spectra files is important."
  type: string[]
  inputBinding:
    prefix: --kronik
- id: in_isobaric
  doc: "Isobaric quant output files from OpenMS in\nconsensusXML format. Multiple\
    \ files can be specified,\nand matching order with spectra files is important."
  type: string[]
  inputBinding:
    prefix: --isobaric
- id: in_rt_to_l
  doc: "Specifies tolerance in seconds for retention time when\nmapping MS1 feature\
    \ quant info to identifications in\nthe PSM table."
  type: long
  inputBinding:
    prefix: --rttol
- id: in_mz_to_l
  doc: "Specifies tolerance in mass-to-charge when mapping MS1\nfeature quant info\
    \ to identifications in the PSM\ntable."
  type: long
  inputBinding:
    prefix: --mztol
- id: in_mz_to_ltype
  doc: "Type of tolerance in mass-to-charge when mapping MS1\nfeature quant info to\
    \ identifications in the PSM\ntable. One of ppm, Da.\n"
  type: string
  inputBinding:
    prefix: --mztoltype
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- msstitch
- storequant
