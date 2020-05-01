#!/usr/bin/env cwl-runner

baseCommand:
- mzrt_match.py
class: CommandLineTool
cwlVersion: v1.0
id: mzrt_match.py
inputs:
- doc: Out path for first file
  id: anno1
  inputBinding:
    prefix: --anno1
  type: string
- doc: Out path for second file
  id: anno2
  inputBinding:
    prefix: --anno2
  type: string
- doc: Name of the column in file1 that contains the uniqID
  id: uniqid1
  inputBinding:
    prefix: --uniqID1
  type: string
- doc: Name of the column in file1 that contains MZ
  id: mzid1
  inputBinding:
    prefix: --mzID1
  type: string
- doc: Name of the column in file1 that contains RT
  id: rtid1
  inputBinding:
    prefix: --rtID1
  type: string
- doc: Name of the column in file2 that contains the uniqID
  id: uniqid2
  inputBinding:
    prefix: --uniqID2
  type: string
- doc: Name of the column in file2 that contains MZ
  id: mzid2
  inputBinding:
    prefix: --mzID2
  type: string
- doc: Name of the column in file2 that contains RT
  id: rtid2
  inputBinding:
    prefix: --rtID2
  type: string
- doc: Out path for All peak combinations File
  id: all
  inputBinding:
    prefix: --all
  type: string
- doc: Out path for Matched peaks combinations File
  id: matched
  inputBinding:
    prefix: --matched
  type: string
- doc: Out path for Unmatched peaks in file 1
  id: unmatched_1
  inputBinding:
    prefix: --unmatched1
  type: string
- doc: Out path for Unmatched peaks in file 2
  id: unmatched_2
  inputBinding:
    prefix: --unmatched2
  type: string
- doc: Out path for Summary File
  id: summary
  inputBinding:
    prefix: --summary
  type: string
- doc: Out path for Matched vs Unmatched Combinations Venn Diagram File
  id: figure
  inputBinding:
    prefix: --figure
  type: string
- doc: Window value for MZ matching [default 0.005]
  id: mz_cut
  inputBinding:
    prefix: --mzcut
  type: string
- doc: Window value for RT matching [default 0.15]
  id: rt_cut
  inputBinding:
    prefix: --rtcut
  type: string
- doc: Short name for File 1 [default F1]
  id: name_1
  inputBinding:
    prefix: --name1
  type: string
- doc: Short name for File 2 [default F2]
  id: name_2
  inputBinding:
    prefix: --name2
  type: string
