#!/usr/bin/env cwl-runner

baseCommand:
- compound_identification.py
class: CommandLineTool
cwlVersion: v1.0
id: compound_identification.py
inputs:
- doc: Out path for first file
  id: an_no
  inputBinding:
    prefix: --anno
  type: string
- doc: Name of thecolumn in file that contains the uniqID
  id: uniqid
  inputBinding:
    prefix: --uniqID
  type: string
- doc: Name of the column in file that contains MZ
  id: mz_id
  inputBinding:
    prefix: --mzID
  type: string
- doc: Name of the column in file that contains RT
  id: rt_id
  inputBinding:
    prefix: --rtID
  type: string
- doc: Library to use forthe matching.
  id: library
  inputBinding:
    prefix: --library
  type: string
- doc: Name of thecolumn in the library file that contains the uniqID
  id: lib_uniqid
  inputBinding:
    prefix: --libuniqID
  type: string
- doc: Name of the column in the library file that contains MZ
  id: libm_zid
  inputBinding:
    prefix: --libmzID
  type: string
- doc: Name of the column in the library file that contains RT
  id: libr_tid
  inputBinding:
    prefix: --librtID
  type: string
- doc: Output path for identifiedcompounds.
  id: output
  inputBinding:
    prefix: --output
  type: string
