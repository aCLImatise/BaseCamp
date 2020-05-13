class: CommandLineTool
id: compound_identification.py.cwl
inputs:
- id: an_no
  doc: Out path for first file
  type: string
  inputBinding:
    prefix: --anno
- id: uniqid
  doc: Name of thecolumn in file that contains the uniqID
  type: string
  inputBinding:
    prefix: --uniqID
- id: mz_id
  doc: Name of the column in file that contains MZ
  type: string
  inputBinding:
    prefix: --mzID
- id: rt_id
  doc: Name of the column in file that contains RT
  type: string
  inputBinding:
    prefix: --rtID
- id: library
  doc: Library to use forthe matching.
  type: string
  inputBinding:
    prefix: --library
- id: lib_uniqid
  doc: Name of thecolumn in the library file that contains the uniqID
  type: string
  inputBinding:
    prefix: --libuniqID
- id: libm_zid
  doc: Name of the column in the library file that contains MZ
  type: string
  inputBinding:
    prefix: --libmzID
- id: libr_tid
  doc: Name of the column in the library file that contains RT
  type: string
  inputBinding:
    prefix: --librtID
- id: output
  doc: Output path for identifiedcompounds.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- compound_identification.py
